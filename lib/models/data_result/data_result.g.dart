// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataResult<T> _$$_DataResultFromJson<T>(Map<String, dynamic> json) =>
    _$_DataResult<T>(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: ModelConverter<T>().fromJson(json['data'] as Object),
    );

Map<String, dynamic> _$$_DataResultToJson<T>(_$_DataResult<T> instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': ModelConverter<T>().toJson(instance.data),
    };
