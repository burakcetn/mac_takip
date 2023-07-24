import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'profile_update_model.freezed.dart';
part 'profile_update_model.g.dart';

ProfileUpdateModel profileUpdateModelFromJson(String str) =>
    ProfileUpdateModel.fromJson(json.decode(str));

String profileUpdateModelToJson(ProfileUpdateModel data) =>
    json.encode(data.toJson());

@freezed
class ProfileUpdateModel with _$ProfileUpdateModel {
  const factory ProfileUpdateModel({
    String? name,
    String? email,
    String? password,
    String? surname,
    String? phone,
  }) = _ProfileUpdateModel;

  factory ProfileUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileUpdateModelFromJson(json);
}
