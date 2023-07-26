import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'contact_post_model.freezed.dart';
part 'contact_post_model.g.dart';

ContactPostModel contactPostModelFromJson(String str) =>
    ContactPostModel.fromJson(json.decode(str));

String contactPostModelToJson(ContactPostModel data) =>
    json.encode(data.toJson());

@freezed
class ContactPostModel with _$ContactPostModel {
  const factory ContactPostModel({
    required String name,
    required String email,
    required String text,
  }) = _ContactPostModel;

  factory ContactPostModel.fromJson(Map<String, dynamic> json) =>
      _$ContactPostModelFromJson(json);
}
