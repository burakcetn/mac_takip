import 'package:get/get.dart';
import 'package:getx_skeleton/app/data/local/my_shared_pref.dart';
import 'package:getx_skeleton/app/services/user/user_service.dart';
import 'package:getx_skeleton/models/login/login_model.dart';
import 'package:getx_skeleton/models/register_model.dart';
import 'package:getx_skeleton/models/user/user_model.dart';

class UserRepository {
  UserService service = Get.find();
  static LoginModel? _loginedUser;
  static void setLoginUser(LoginModel? loginedUser) {
    _loginedUser =
        loginedUser ?? const LoginModel(token: "", user: User(id: -1));
  }

  static LoginModel getLoginedUser() => _loginedUser!;

  Future<bool> login(String email, String password) async {
    var response = await service.login(
      RegisterModel(email: email, password: password),
    );
    if (response.status ?? false) {
      MySharedPref.setLoginUser(response.data);
      UserRepository.setLoginUser(response.data);
    }
    return response.status ?? false;
  }
}
