import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/color_manager.dart';
import '../../../components/custom_snackbar.dart';

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
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController rePassword = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController userName = TextEditingController();
  RxBool registerState = false.obs;

  void _register() async {
    registerState.value = false;
    registerState.update((val) {});
    if (!onPassControl(password.text, rePassword.text)) {
      CustomSnackBar.showCustomErrorToast(message: "Password did not match");
      return;
    }
    await register(RegisterModel(
        username: userName.text,
        email: email.text,
        password: password.text,
        firstName: firstName.text,
        lastName: lastName.text));
    registerState.update((val) {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextFormField(
          style: Theme.of(context).textTheme.labelSmall,
          controller: userName,
          decoration: inputDecoration('Username', Icons.person),
        ),
        SizedBox(
          height: 12,
        ),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          style: Theme.of(context).textTheme.labelSmall,
          controller: email,
          decoration: inputDecoration('E-mail', Icons.person),
        ),
        SizedBox(
          height: 12,
        ),
        TextFormField(
          style: Theme.of(context).textTheme.labelSmall,
          controller: password,
          decoration: inputDecoration('Password', Icons.lock),
        ),
        SizedBox(
          height: 8,
        ),
        TextFormField(
          controller: rePassword,
          style: Theme.of(context).textTheme.labelSmall,
          decoration: inputDecoration('Retype Password', Icons.lock),
        ),
        SizedBox(
          height: 8,
        ),
        ElevatedButton(
          onPressed: registerState.value ? null : () => _register(),
          child: registerState.value
              ? CircularProgressIndicator() // Show loading indicator
              : Text('register'.tr),
        ),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
