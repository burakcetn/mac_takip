// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataResult<T> _$DataResultFromJson<T>(Map<String, dynamic> json) {
  return _DataResult<T>.fromJson(json);
}

/// @nodoc
mixin _$DataResult<T> {
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @ModelConverter()
  T get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataResultCopyWith<T, DataResult<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataResultCopyWith<T, $Res> {
  factory $DataResultCopyWith(
          DataResult<T> value, $Res Function(DataResult<T>) then) =
      _$DataResultCopyWithImpl<T, $Res, DataResult<T>>;
  @useResult
  $Res call({bool? status, String? message, @ModelConverter() T data});
}

/// @nodoc
class _$DataResultCopyWithImpl<T, $Res, $Val extends DataResult<T>>
    implements $DataResultCopyWith<T, $Res> {
  _$DataResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataResultCopyWith<T, $Res>
    implements $DataResultCopyWith<T, $Res> {
  factory _$$_DataResultCopyWith(
          _$_DataResult<T> value, $Res Function(_$_DataResult<T>) then) =
      __$$_DataResultCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({bool? status, String? message, @ModelConverter() T data});
}

/// @nodoc
class __$$_DataResultCopyWithImpl<T, $Res>
    extends _$DataResultCopyWithImpl<T, $Res, _$_DataResult<T>>
    implements _$$_DataResultCopyWith<T, $Res> {
  __$$_DataResultCopyWithImpl(
      _$_DataResult<T> _value, $Res Function(_$_DataResult<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_DataResult<T>(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataResult<T> implements _DataResult<T> {
  const _$_DataResult(
      {this.status, this.message, @ModelConverter() required this.data});

  factory _$_DataResult.fromJson(Map<String, dynamic> json) =>
      _$$_DataResultFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;
  @override
  @ModelConverter()
  final T data;

  @override
  String toString() {
    return 'DataResult<$T>(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataResult<T> &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataResultCopyWith<T, _$_DataResult<T>> get copyWith =>
      __$$_DataResultCopyWithImpl<T, _$_DataResult<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataResultToJson<T>(
      this,
    );
  }
}

abstract class _DataResult<T> implements DataResult<T> {
  const factory _DataResult(
      {final bool? status,
      final String? message,
      @ModelConverter() required final T data}) = _$_DataResult<T>;

  factory _DataResult.fromJson(Map<String, dynamic> json) =
      _$_DataResult<T>.fromJson;

  @override
  bool? get status;
  @override
  String? get message;
  @override
  @ModelConverter()
  T get data;
  @override
  @JsonKey(ignore: true)
  _$$_DataResultCopyWith<T, _$_DataResult<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
