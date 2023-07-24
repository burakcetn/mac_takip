import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:getx_skeleton/models/model_converter.dart';

part 'data_result.freezed.dart';
part 'data_result.g.dart';

DataResult dataResultFromJson(String str) =>
    DataResult.fromJson(json.decode(str));

String dataResultToJson(DataResult data) => json.encode(data.toJson());

@freezed
class DataResult<T> with _$DataResult {
  const factory DataResult({
    bool? status,
    String? message,
    @ModelConverter() required T data,
  }) = _DataResult;

  factory DataResult.fromJson(Map<String, dynamic> json) =>
      _$DataResultFromJson(json);
}
