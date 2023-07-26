import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/Login/widgets/login_form.dart';
import 'package:getx_skeleton/app/modules/Login/widgets/register_form.dart';
import 'package:getx_skeleton/app/routes/app_pages.dart';

import '../../../config/translations/localization_service.dart';
import '../../../utils/color_manager.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class LoginPage extends GetView<LoginController> {
  LoginPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: ColorManager.base00,
          resizeToAvoidBottomInset: true,
          body: Stack(
            children: [
              CustomPaint(
                size: Size(375.w, 812.h),
                painter: LoginPageCustomPainter(
                    color: Theme.of(context).colorScheme.tertiary),
              ),
              GestureDetector(
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
                          Container(
                            height: 150,
                            width: 150,
                            child: Image.asset(
                              "assets/images/app_icon.png",
                              width: 150,
                              height: 150,
                              fit: BoxFit.fitWidth,
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
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorManager.base00),
                              onPressed: () {
                                if (controller.formType.value ==
                                    FormType.login) {
                                  controller.formType.value = FormType.register;
                                } else {
                                  controller.formType.value = FormType.login;
                                }
                                controller.formType.update((val) {});
                              },
                              child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Text.rich(
                                    TextSpan(
                                      text: controller.formType.value ==
                                              FormType.register
                                          ? 'Hesabın var mı'
                                          : 'Hesabın yok mu',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                      children: [
                                        const TextSpan(
                                            text: '?  ',
                                            style: TextStyle(
                                                color: Colors
                                                    .black)), // Change color or style here as needed.
                                        TextSpan(
                                          text: controller.formType.value ==
                                                  FormType.register
                                              ? ' Giriş yap'
                                              : ' Kayıt ol',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .primary,
                                                  decoration:
                                                      TextDecoration.underline),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class LoginPageCustomPainter extends CustomPainter {
  Color color;
  LoginPageCustomPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = color;

    Path path = Path()
      ..moveTo(size.width, size.height / 8)
      ..lineTo(0, 2 * size.height / 3)
      ..lineTo(0, 0)
      ..lineTo(size.width, 0)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
