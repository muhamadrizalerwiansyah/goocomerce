import '../../../../configs/http.dart';
import '../../../data/model/branch.dart';

class RegisterProvider {
  final http = Http();
  Future<List<Branch>> getListBranch() async {
    try {
      var response = await http.get('/branch');
      var result = (response.data["data"] as List)
          .map((x) => Branch.fromJson(x))
          .toList();

      return result;
    } catch (e) {
      return [];
    }
  }

  Future<bool?> register(String name, String email, String branchId,
      String password, String gender) async {
    try {
      var result = await http.post(
        '/register',
        data: {
          'name': name,
          'email': email,
          'branch_id': branchId,
          'password': password,
          'gender': gender,
        },
      );
      if (result.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
