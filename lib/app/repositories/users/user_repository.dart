import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/data/local/my_shared_pref.dart';
import 'package:getx_skeleton/app/services/user/user_service.dart';
import 'package:getx_skeleton/models/data_result/data_result.dart';
import 'package:getx_skeleton/models/login/login_model.dart';
import 'package:getx_skeleton/models/register_model.dart';
import 'package:getx_skeleton/models/user/user_model.dart';
import 'package:confirm_dialog/confirm_dialog.dart';

import '../../components/custom_snackbar.dart';
import '../../routes/app_pages.dart';

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

  Future<DataResult<LoginModel>> register(
      String name, String email, String password) async {
    var response = await service.register(
      RegisterModel(name: name, email: email, password: password),
    );
    if (response.status ?? false) {
      MySharedPref.setLoginUser(response.data);
      UserRepository.setLoginUser(response.data);
    }
    return response;
  }

  Future<bool> deleteUser() async {
    if (await confirm(
      Get.context!,
      title: Text("Hesabınız silinecek"),
      content: Text("Hesabınızı Silmek istiyor musunuz"),
      textOK: Text("Evet, Hesabımı Sil"),
      textCancel: Text("Hayır"),
    )) {
      var response = await service.deleteAccount();
      CustomSnackBar.showCustomSnackBar(
          title: "", message: response.message ?? "");
      var status = response.status ?? false;
      if (status) {
        MySharedPref.setLoginUser(LoginModel());
        Get.offAndToNamed(Routes.LOGIN);
      }
      return response.status ?? false;
    }
    return false;
  }
}
