// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_update_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileUpdateModel _$ProfileUpdateModelFromJson(Map<String, dynamic> json) {
  return _ProfileUpdateModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileUpdateModel {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get surname => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileUpdateModelCopyWith<ProfileUpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileUpdateModelCopyWith<$Res> {
  factory $ProfileUpdateModelCopyWith(
          ProfileUpdateModel value, $Res Function(ProfileUpdateModel) then) =
      _$ProfileUpdateModelCopyWithImpl<$Res, ProfileUpdateModel>;
  @useResult
  $Res call(
      {String? name,
      String? email,
      String? password,
      String? surname,
      String? phone});
}

/// @nodoc
class _$ProfileUpdateModelCopyWithImpl<$Res, $Val extends ProfileUpdateModel>
    implements $ProfileUpdateModelCopyWith<$Res> {
  _$ProfileUpdateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? surname = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileUpdateModelCopyWith<$Res>
    implements $ProfileUpdateModelCopyWith<$Res> {
  factory _$$_ProfileUpdateModelCopyWith(_$_ProfileUpdateModel value,
          $Res Function(_$_ProfileUpdateModel) then) =
      __$$_ProfileUpdateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? email,
      String? password,
      String? surname,
      String? phone});
}

/// @nodoc
class __$$_ProfileUpdateModelCopyWithImpl<$Res>
    extends _$ProfileUpdateModelCopyWithImpl<$Res, _$_ProfileUpdateModel>
    implements _$$_ProfileUpdateModelCopyWith<$Res> {
  __$$_ProfileUpdateModelCopyWithImpl(
      _$_ProfileUpdateModel _value, $Res Function(_$_ProfileUpdateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? surname = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$_ProfileUpdateModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileUpdateModel implements _ProfileUpdateModel {
  const _$_ProfileUpdateModel(
      {this.name, this.email, this.password, this.surname, this.phone});

  factory _$_ProfileUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileUpdateModelFromJson(json);

  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? surname;
  @override
  final String? phone;

  @override
  String toString() {
    return 'ProfileUpdateModel(name: $name, email: $email, password: $password, surname: $surname, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileUpdateModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, password, surname, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileUpdateModelCopyWith<_$_ProfileUpdateModel> get copyWith =>
      __$$_ProfileUpdateModelCopyWithImpl<_$_ProfileUpdateModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileUpdateModelToJson(
      this,
    );
  }
}

abstract class _ProfileUpdateModel implements ProfileUpdateModel {
  const factory _ProfileUpdateModel(
      {final String? name,
      final String? email,
      final String? password,
      final String? surname,
      final String? phone}) = _$_ProfileUpdateModel;

  factory _ProfileUpdateModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileUpdateModel.fromJson;

  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get surname;
  @override
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileUpdateModelCopyWith<_$_ProfileUpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
