// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactPostModel _$ContactPostModelFromJson(Map<String, dynamic> json) {
  return _ContactPostModel.fromJson(json);
}

/// @nodoc
mixin _$ContactPostModel {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactPostModelCopyWith<ContactPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactPostModelCopyWith<$Res> {
  factory $ContactPostModelCopyWith(
          ContactPostModel value, $Res Function(ContactPostModel) then) =
      _$ContactPostModelCopyWithImpl<$Res, ContactPostModel>;
  @useResult
  $Res call({String name, String email, String text});
}

/// @nodoc
class _$ContactPostModelCopyWithImpl<$Res, $Val extends ContactPostModel>
    implements $ContactPostModelCopyWith<$Res> {
  _$ContactPostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactPostModelCopyWith<$Res>
    implements $ContactPostModelCopyWith<$Res> {
  factory _$$_ContactPostModelCopyWith(
          _$_ContactPostModel value, $Res Function(_$_ContactPostModel) then) =
      __$$_ContactPostModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String text});
}

/// @nodoc
class __$$_ContactPostModelCopyWithImpl<$Res>
    extends _$ContactPostModelCopyWithImpl<$Res, _$_ContactPostModel>
    implements _$$_ContactPostModelCopyWith<$Res> {
  __$$_ContactPostModelCopyWithImpl(
      _$_ContactPostModel _value, $Res Function(_$_ContactPostModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? text = null,
  }) {
    return _then(_$_ContactPostModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactPostModel implements _ContactPostModel {
  const _$_ContactPostModel(
      {required this.name, required this.email, required this.text});

  factory _$_ContactPostModel.fromJson(Map<String, dynamic> json) =>
      _$$_ContactPostModelFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String text;

  @override
  String toString() {
    return 'ContactPostModel(name: $name, email: $email, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactPostModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactPostModelCopyWith<_$_ContactPostModel> get copyWith =>
      __$$_ContactPostModelCopyWithImpl<_$_ContactPostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactPostModelToJson(
      this,
    );
  }
}

abstract class _ContactPostModel implements ContactPostModel {
  const factory _ContactPostModel(
      {required final String name,
      required final String email,
      required final String text}) = _$_ContactPostModel;

  factory _ContactPostModel.fromJson(Map<String, dynamic> json) =
      _$_ContactPostModel.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_ContactPostModelCopyWith<_$_ContactPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}
