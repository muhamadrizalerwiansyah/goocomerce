import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:goocommerce/firebase_options.dart';
import 'package:goocommerce/utils/theme.dart';

import 'app/routes/app_pages.dart';
import 'app/services/authentication_service.dart';
import 'app/services/firebase_service.dart';
import 'configs/colorSchemes.dart';

Future<void> main() async {
  await initServices();
  // var user = await Get.putAsync(() => AuthenticationService().init());

  runApp(MyApp(
      // status: user.user.value != null ? true : false,
      ));
}

Future<void> initServices() async {
  await dotenv.load(fileName: ".env");
  await Get.putAsync(() => AuthenticationService().init());
  Get.lazyPut(() => FirebaseService());
  setupFirebase();
  configLoading();
}

Future<void> setupFirebase() async {
  final FirebaseService firebaseService = Get.find();
  // var homeController = Get.find<HomePageController>();
  final authenticationService = Get.find<AuthenticationService>();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseMessaging.instance.subscribeToTopic('all');
  if (authenticationService.user.value?.branchId != null) {
    await FirebaseMessaging.instance
        .subscribeToTopic(authenticationService.user.value!.branchId!);
  }
  final fcmToken = await FirebaseMessaging.instance.getToken();
  if (fcmToken != null) {
    firebaseService.saveFcmToken(fcmToken);
  }
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    // print('Got a messae whilst in the foreground!');
    // print('Message data: ${message.data}');
    // homeController.unread.value = homeController.unread.value + 1;

    // if (message.notification != null) {
    //   print('Message also contained a notification: ${message.notification}');
    // }
  });
  FirebaseMessaging.instance.onTokenRefresh.listen((fcmToken) {
    firebaseService.saveFcmToken(fcmToken);
  }).onError((err) {});
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = colorPrimaryMain
    ..backgroundColor = Colors.green
    ..indicatorColor = colorPrimaryMain
    ..textColor = colorPrimaryMain
    ..maskColor = colorPrimaryMain.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
  // ..customAnimation = CustomAnimation();
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    // required this.status,
  });

  // final bool status;

  @override
  Widget build(BuildContext context) {
    ThemeStyle themeStyle = ThemeStyle();

    return ScreenUtilInit(
      designSize: const Size(375, 812), // Iphone 13 Mini
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              elevatedButtonTheme: themeStyle.elevatedButtonThemeStyle(),
              outlinedButtonTheme: themeStyle.outlinedButtonThemeData(),
              textTheme: themeStyle.textThemeStyle(),
              chipTheme: themeStyle.chipThemedData(),
              colorScheme: lightColorScheme),
          title: "GooCommerce",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          builder: EasyLoading.init(),
        );
      },
    );
  }
}
