import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/Login/widgets/login_form.dart';
import 'package:getx_skeleton/app/modules/Login/widgets/login_page_custom_painter.dart';
import 'package:getx_skeleton/app/modules/Login/widgets/register_form.dart';
import 'package:getx_skeleton/app/routes/app_pages.dart';
import 'package:hive/hive.dart';

import '../../../config/translations/localization_service.dart';
import '../../../utils/color_manager.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  LoginController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Colors.white,
            Color(0xffE3CDF4),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 300,
                      width: 500,
                      child: Image.asset(
                        "assets/images/login_image.png",
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Text(
                      "Banko Team",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Obx(
                      () {
                        return controller.formType.value == FormType.login
                            ? LoginForm(
                                login: (email, password) async {
                                  return await controller.loginUser(
                                      email, password);
                                },
                              )
                            : RegisterForm(
                                register: (registerModel) async {
                                  return await controller.registerUser(
                                      registerModel.username,
                                      registerModel.email,
                                      registerModel.password);
                                },
                                onPassControl: (pass1, pass2) {
                                  return pass1 == pass2;
                                },
                              );
                      },
                    ),
                    Obx(
                      () => Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  ColorManager.loginGradient1,
                                  ColorManager.loginGradient2
                                ])),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(0),
                              minimumSize: Size(300, 20),
                              maximumSize: Size(300, 40),
                              backgroundColor: Colors.transparent),
                          onPressed: () {
                            if (controller.formType.value == FormType.login) {
                              controller.formType.value = FormType.register;
                            } else {
                              controller.formType.value = FormType.login;
                            }
                            controller.formType.update((val) {});
                          },
                          child: Text(
                            controller.formType.value == FormType.register
                                ? 'Hesabın var mı, Giriş yap'
                                : 'Kayıt Ol',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
