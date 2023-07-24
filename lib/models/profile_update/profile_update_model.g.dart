// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileUpdateModel _$$_ProfileUpdateModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileUpdateModel(
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      surname: json['surname'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$_ProfileUpdateModelToJson(
        _$_ProfileUpdateModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'surname': instance.surname,
      'phone': instance.phone,
    };
