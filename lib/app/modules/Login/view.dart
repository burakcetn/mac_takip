import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/Login/widgets/login_form.dart';
import 'package:getx_skeleton/app/modules/Login/widgets/register_form.dart';
import 'package:getx_skeleton/app/routes/app_pages.dart';

import '../../../config/translations/localization_service.dart';
import '../../../utils/color_manager.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            elevation: 0,
            leading: PopupMenuButton<int>(
              icon: Icon(Icons.language),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  // row with 2 children
                  child: Text(
                    "Tr",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  // row with two children
                  child: Text(
                    "En",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
              ],
              onSelected: (value) {
                if (value == 1) {
                  LocalizationService.updateLanguage("tr");
                } else if (value == 2) {
                  LocalizationService.updateLanguage("en");
                }
              },
            ),
            title: Text(
              "language".tr,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      SizedBox(
                        height: 150,
                        child: FittedBox(
                          child: Container(
                            height: 150,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      color: ColorManager.shadowColor
                                          .withOpacity(0.3),
                                      blurRadius: 10),
                                  BoxShadow(
                                    color: ColorManager.shadowColor
                                        .withOpacity(0.3),
                                    spreadRadius: -2,
                                    blurRadius: 5,
                                  ),
                                ],
                                color: ColorManager.base20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
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
                        () => ElevatedButton(
                          onPressed: () {
                            if (controller.formType.value == FormType.login) {
                              controller.formType.value = FormType.register;
                            } else {
                              controller.formType.value = FormType.login;
                            }
                            controller.formType.update((val) {});
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                                (controller.formType.value == FormType.register
                                        ? 'Hesabın var mı? Giriş yap'
                                        : 'Hesabın yok mu? Kayıt ol')
                                    .tr),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
