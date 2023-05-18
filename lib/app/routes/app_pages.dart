import 'package:get/get.dart';

import '../modules/detailProduct/bindings/detail_product_binding.dart';
import '../modules/detailProduct/views/detail_product_view.dart';
import '../modules/home/account/bindings/account_binding.dart';
import '../modules/home/account/views/account_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/cart/bindings/cart_binding.dart';
import '../modules/home/cart/views/cart_view.dart';
import '../modules/home/homePage/bindings/home_page_binding.dart';
import '../modules/home/homePage/views/home_page_view.dart';
import '../modules/home/transaction/bindings/transaction_binding.dart';
import '../modules/home/transaction/views/transaction_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/onBoarding/bindings/on_boarding_binding.dart';
import '../modules/onBoarding/views/on_boarding_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/splashScreen/bindings/splash_screen_binding.dart';
import '../modules/splashScreen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      children: [
        GetPage(
          name: _Paths.HOME,
          page: () => HomeView(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: _Paths.HOME_PAGE,
          page: () => const HomePageView(),
          binding: HomePageBinding(),
        ),
        GetPage(
          name: _Paths.CART,
          page: () => const CartView(),
          binding: CartBinding(),
        ),
        GetPage(
          name: _Paths.TRANSACTION,
          page: () => const TransactionView(),
          binding: TransactionBinding(),
        ),
        GetPage(
          name: _Paths.ACCOUNT,
          page: () => const AccountView(),
          binding: AccountBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.ON_BOARDING,
      page: () => const OnBoardingView(),
      binding: OnBoardingBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_PRODUCT,
      page: () => const DetailProductView(),
      binding: DetailProductBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
  ];
}
