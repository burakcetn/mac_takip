import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import '../user/user_model.dart';
import 'package:hive/hive.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  const factory LoginModel({
    String? token,
    User? user,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}
