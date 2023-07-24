import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:getx_skeleton/app/repositories/users/user_repository.dart';
import 'package:getx_skeleton/models/login/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../config/translations/localization_service.dart';

class MySharedPref {
  // prevent making instance
  MySharedPref._();

  // get storage
  static late SharedPreferences _sharedPreferences;

  // STORING KEYS
  static const String _fcmTokenKey = 'fcm_token';
  static const String _currentLocalKey = 'current_local';
  static const String _lightThemeKey = 'is_theme_light';
  static const String _loginUser = 'login_user';

  /// init get storage services
  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    UserRepository.setLoginUser(await getLoginUser());
  }

  static setStorage(SharedPreferences sharedPreferences) {
    _sharedPreferences = sharedPreferences;
  }

  /// set theme current type as light theme
  static Future<void> setThemeIsLight(bool lightTheme) =>
      _sharedPreferences.setBool(_lightThemeKey, lightTheme);

  /// get if the current theme type is light
  static bool getThemeIsLight() =>
      _sharedPreferences.getBool(_lightThemeKey) ??
      true; // todo set the default theme (true for light, false for dark)

  /// save current locale
  static Future<void> setCurrentLanguage(String languageCode) =>
      _sharedPreferences.setString(_currentLocalKey, languageCode);

  /// get current locale
  static Locale getCurrentLocal() {
    String? langCode = _sharedPreferences.getString(_currentLocalKey);
    // default language is english
    if (langCode == null) {
      return LocalizationService.defaultLanguage;
    }
    return LocalizationService.supportedLanguages[langCode]!;
  }

  /// save generated fcm token
  static Future<void> setFcmToken(String token) =>
      _sharedPreferences.setString(_fcmTokenKey, token);

  /// get generated fcm token
  static String? getFcmToken() => _sharedPreferences.getString(_fcmTokenKey);

  /// clear all data from shared pref
  static Future<void> clear() async => await _sharedPreferences.clear();

  static Future<void> setLoginUser(LoginModel loginModel) {
    return _sharedPreferences.setString(
        _loginUser, json.encode(loginModel.toJson()));
  }

  static Future<LoginModel?> getLoginUser() async {
    var str = _sharedPreferences.getString(_loginUser);
    if (str == null) {
      return null;
    }
    return LoginModel.fromJson(json.decode(str));
  }
}
