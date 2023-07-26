import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/color_manager.dart';
import '../../../components/custom_snackbar.dart';
import '../controller.dart';

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
    labelStyle: TextStyle(color: Colors.grey, fontSize: 8),
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

typedef RegisterFunction = Future<bool> Function(RegisterModel registerModel);
typedef OnPassMatch = bool Function(String pass1, String pass2);

class RegisterModel {
  String username;
  String email;
  String password;
  String firstName;
  String lastName;
  RegisterModel({
    required this.username,
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
  });
}

class RegisterForm extends StatelessWidget {
  RegisterForm({
    Key? key,
    required this.onPassControl,
    required this.register,
  }) : super(key: key);
  OnPassMatch onPassControl;
  RegisterFunction register;
  RxBool registerState = false.obs;
  LoginController controller = Get.find();

  void _register() async {
    registerState.value = false;
    registerState.update((val) {});
    if (!onPassControl(controller.password.text, controller.rePassword.text)) {
      CustomSnackBar.showCustomErrorToast(message: "Password did not match");
      return;
    }
    await register(RegisterModel(
        username: controller.userName.text,
        email: controller.email.text,
        password: controller.password.text,
        firstName: controller.firstName.text,
        lastName: controller.lastName.text));
    registerState.update((val) {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Uygulamamıza kayıt olarak ücretsiz kullabilirsiniz",
            style: TextStyle(
                color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextFormField(
            style: Theme.of(context).textTheme.labelLarge,
            controller: controller.userName,
            decoration: inputDecoration('Username', Icons.person),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: Theme.of(context).textTheme.labelLarge,
            controller: controller.email,
            decoration: inputDecoration('E-mail', Icons.email_outlined),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextFormField(
            style: Theme.of(context).textTheme.labelLarge,
            controller: controller.password,
            decoration: inputDecoration('Password', Icons.key),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextFormField(
            controller: controller.rePassword,
            style: Theme.of(context).textTheme.labelLarge,
            decoration: inputDecoration('Retype Password', Icons.key),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Center(
          child: Container(
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
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: Colors.transparent,
              ),
              onPressed: registerState.value ? null : () => _register(),
              child: registerState.value
                  ? CircularProgressIndicator() // Show loading indicator
                  : Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      child: Text(
                        'Kayıt Ol'.tr,
                        style: TextStyle(fontSize: 22),
                      )),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
