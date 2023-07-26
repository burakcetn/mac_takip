import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/Login/controller.dart';

import '../../../../utils/color_manager.dart';

InputDecoration inputDecoration(
  String labelText,
  IconData iconData, {
  String? prefix,
  String? helperText,
}) {
  return InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
    helperText: helperText,
    hintText: labelText,
    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
    labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
    fillColor: Colors.transparent,
    filled: true,
    prefixText: prefix,
    prefixIcon: Icon(
      iconData,
      size: 20,
    ),
    prefixIconConstraints: BoxConstraints(minWidth: 60),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.green),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.grey),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.grey),
    ),
  );
}

typedef LoginFunction = Future<bool> Function(
    String usernameOrEmail, String password);

class LoginForm extends StatelessWidget {
  LoginForm({
    Key? key,
    this.onEmailChange,
    this.onPasswordChange,
    required this.login,
  }) : super(key: key);
  Function(String email)? onEmailChange;
  Function(String password)? onPasswordChange;
  LoginFunction login;
  RxBool loginState = false.obs;

  LoginController controller = Get.find();
  void _login() async {
    loginState.value = true;
    loginState.update((val) {});
    await login(controller.email.text, controller.password.text);
    loginState.value = false;
    loginState.update((val) {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            "E posta Adresi",
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: Theme.of(Get.context!).textTheme.labelLarge,
            controller: controller.email,
            validator: (value) {
              return (value == null || value.isEmpty)
                  ? 'Please Enter Email'
                  : null;
            },
            decoration: inputDecoration('E-mail', Icons.person),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            "Şifre",
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: TextFormField(
            obscureText: true,
            style: Theme.of(context).textTheme.labelLarge,
            validator: (value) {
              return (value == null || value.isEmpty)
                  ? 'Please Enter Password'
                  : null;
            },
            controller: controller.password,
            decoration: inputDecoration('Password', Icons.key),
          ),
        ),
        SizedBox(
          height: 32,
        ),
        Obx(
          () => Center(
            child: Container(
              padding: EdgeInsets.all(0),
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
                  minimumSize: Size(300, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: Colors.transparent,
                ),
                onPressed: loginState.value ? null : () => _login(),
                child: loginState.value
                    ? Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: CircularProgressIndicator(
                            // backgroundColor: Colors.transparent,
                            ),
                      ) // Show loading indicator
                    : Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2),
                        child: Text(
                          'Giriş Yap'.tr,
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
              ),
            ),
          ),
        ),
        SizedBox(height: 16),
        // TextButton(
        //   onPressed: () {
        //     setState(() {
        //       _formType = FormType.register;
        //     });
        //   },
        //   child: Text('register'.tr),
        // ),
      ],
    );
  }
}
