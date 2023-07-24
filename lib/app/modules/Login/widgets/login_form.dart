import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/color_manager.dart';

InputDecoration inputDecoration(
  String labelText,
  IconData iconData, {
  String? prefix,
  String? helperText,
}) {
  return InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
    helperText: helperText,
    labelText: labelText,
    labelStyle: TextStyle(color: Colors.grey, fontSize: 16),
    fillColor: ColorManager.base40,
    filled: true,
    prefixText: prefix,
    prefixIcon: Icon(
      iconData,
      size: 20,
    ),
    prefixIconConstraints: BoxConstraints(minWidth: 60),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.black),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.black),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.black),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.black),
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
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  RxBool loginState = false.obs;

  void _login() async {
    loginState.value = true;
    loginState.update((val) {});
    await login(email.text, password.text);
    loginState.value = false;
    loginState.update((val) {});
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      key: key,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: Theme.of(Get.context!).textTheme.labelSmall,
            controller: email,
            validator: (value) {
              return (value == null || value.isEmpty)
                  ? 'Please Enter Email'
                  : null;
            },
            decoration: inputDecoration('E-mail', Icons.person),
          ),
          SizedBox(
            height: 24,
          ),
          TextFormField(
            style: Theme.of(context).textTheme.labelSmall,
            validator: (value) {
              return (value == null || value.isEmpty)
                  ? 'Please Enter Password'
                  : null;
            },
            controller: password,
            decoration: inputDecoration('Password', Icons.lock),
          ),
          SizedBox(
            height: 32,
          ),
          Obx(
            () => ElevatedButton(
              onPressed: loginState.value ? null : () => _login(),
              child: loginState.value
                  ? CircularProgressIndicator() // Show loading indicator
                  : Text('login'.tr),
            ),
          ),
          SizedBox(height: 32),
          // TextButton(
          //   onPressed: () {
          //     setState(() {
          //       _formType = FormType.register;
          //     });
          //   },
          //   child: Text('register'.tr),
          // ),
        ],
      ),
    );
  }
}
