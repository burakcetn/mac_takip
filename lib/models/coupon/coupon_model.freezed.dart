// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CouponList _$CouponListFromJson(Map<String, dynamic> json) {
  return _CouponList.fromJson(json);
}

/// @nodoc
mixin _$CouponList {
  String? get type => throw _privateConstructorUsedError;
  List<Coupon>? get coupons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponListCopyWith<CouponList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponListCopyWith<$Res> {
  factory $CouponListCopyWith(
          CouponList value, $Res Function(CouponList) then) =
      _$CouponListCopyWithImpl<$Res, CouponList>;
  @useResult
  $Res call({String? type, List<Coupon>? coupons});
}

/// @nodoc
class _$CouponListCopyWithImpl<$Res, $Val extends CouponList>
    implements $CouponListCopyWith<$Res> {
  _$CouponListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? coupons = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coupons: freezed == coupons
          ? _value.coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<Coupon>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CouponListCopyWith<$Res>
    implements $CouponListCopyWith<$Res> {
  factory _$$_CouponListCopyWith(
          _$_CouponList value, $Res Function(_$_CouponList) then) =
      __$$_CouponListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, List<Coupon>? coupons});
}

/// @nodoc
class __$$_CouponListCopyWithImpl<$Res>
    extends _$CouponListCopyWithImpl<$Res, _$_CouponList>
    implements _$$_CouponListCopyWith<$Res> {
  __$$_CouponListCopyWithImpl(
      _$_CouponList _value, $Res Function(_$_CouponList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? coupons = freezed,
  }) {
    return _then(_$_CouponList(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coupons: freezed == coupons
          ? _value._coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<Coupon>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CouponList implements _CouponList {
  const _$_CouponList({this.type, final List<Coupon>? coupons})
      : _coupons = coupons;

  factory _$_CouponList.fromJson(Map<String, dynamic> json) =>
      _$$_CouponListFromJson(json);

  @override
  final String? type;
  final List<Coupon>? _coupons;
  @override
  List<Coupon>? get coupons {
    final value = _coupons;
    if (value == null) return null;
    if (_coupons is EqualUnmodifiableListView) return _coupons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CouponList(type: $type, coupons: $coupons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CouponList &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._coupons, _coupons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_coupons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CouponListCopyWith<_$_CouponList> get copyWith =>
      __$$_CouponListCopyWithImpl<_$_CouponList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CouponListToJson(
      this,
    );
  }
}

abstract class _CouponList implements CouponList {
  const factory _CouponList({final String? type, final List<Coupon>? coupons}) =
      _$_CouponList;

  factory _CouponList.fromJson(Map<String, dynamic> json) =
      _$_CouponList.fromJson;

  @override
  String? get type;
  @override
  List<Coupon>? get coupons;
  @override
  @JsonKey(ignore: true)
  _$$_CouponListCopyWith<_$_CouponList> get copyWith =>
      throw _privateConstructorUsedError;
}

Coupon _$CouponFromJson(Map<String, dynamic> json) {
  return _Coupon.fromJson(json);
}

/// @nodoc
mixin _$Coupon {
  int? get id => throw _privateConstructorUsedError;
  int? get couponId => throw _privateConstructorUsedError;
  String? get oran => throw _privateConstructorUsedError;
  String? get tahmin => throw _privateConstructorUsedError;
  String? get durum => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  dynamic? get taraflar => throw _privateConstructorUsedError;
  dynamic? get eventId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponCopyWith<Coupon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponCopyWith<$Res> {
  factory $CouponCopyWith(Coupon value, $Res Function(Coupon) then) =
      _$CouponCopyWithImpl<$Res, Coupon>;
  @useResult
  $Res call(
      {int? id,
      int? couponId,
      String? oran,
      String? tahmin,
      String? durum,
      String? createdAt,
      String? updatedAt,
      dynamic? taraflar,
      dynamic? eventId});
}

/// @nodoc
class _$CouponCopyWithImpl<$Res, $Val extends Coupon>
    implements $CouponCopyWith<$Res> {
  _$CouponCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? couponId = freezed,
    Object? oran = freezed,
    Object? tahmin = freezed,
    Object? durum = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? taraflar = freezed,
    Object? eventId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      couponId: freezed == couponId
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as int?,
      oran: freezed == oran
          ? _value.oran
          : oran // ignore: cast_nullable_to_non_nullable
              as String?,
      tahmin: freezed == tahmin
          ? _value.tahmin
          : tahmin // ignore: cast_nullable_to_non_nullable
              as String?,
      durum: freezed == durum
          ? _value.durum
          : durum // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      taraflar: freezed == taraflar
          ? _value.taraflar
          : taraflar // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as dynamic?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CouponCopyWith<$Res> implements $CouponCopyWith<$Res> {
  factory _$$_CouponCopyWith(_$_Coupon value, $Res Function(_$_Coupon) then) =
      __$$_CouponCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? couponId,
      String? oran,
      String? tahmin,
      String? durum,
      String? createdAt,
      String? updatedAt,
      dynamic? taraflar,
      dynamic? eventId});
}

/// @nodoc
class __$$_CouponCopyWithImpl<$Res>
    extends _$CouponCopyWithImpl<$Res, _$_Coupon>
    implements _$$_CouponCopyWith<$Res> {
  __$$_CouponCopyWithImpl(_$_Coupon _value, $Res Function(_$_Coupon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? couponId = freezed,
    Object? oran = freezed,
    Object? tahmin = freezed,
    Object? durum = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? taraflar = freezed,
    Object? eventId = freezed,
  }) {
    return _then(_$_Coupon(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      couponId: freezed == couponId
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as int?,
      oran: freezed == oran
          ? _value.oran
          : oran // ignore: cast_nullable_to_non_nullable
              as String?,
      tahmin: freezed == tahmin
          ? _value.tahmin
          : tahmin // ignore: cast_nullable_to_non_nullable
              as String?,
      durum: freezed == durum
          ? _value.durum
          : durum // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      taraflar: freezed == taraflar
          ? _value.taraflar
          : taraflar // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as dynamic?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Coupon implements _Coupon {
  const _$_Coupon(
      {this.id,
      this.couponId,
      this.oran,
      this.tahmin,
      this.durum,
      this.createdAt,
      this.updatedAt,
      this.taraflar,
      this.eventId});

  factory _$_Coupon.fromJson(Map<String, dynamic> json) =>
      _$$_CouponFromJson(json);

  @override
  final int? id;
  @override
  final int? couponId;
  @override
  final String? oran;
  @override
  final String? tahmin;
  @override
  final String? durum;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final dynamic? taraflar;
  @override
  final dynamic? eventId;

  @override
  String toString() {
    return 'Coupon(id: $id, couponId: $couponId, oran: $oran, tahmin: $tahmin, durum: $durum, createdAt: $createdAt, updatedAt: $updatedAt, taraflar: $taraflar, eventId: $eventId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Coupon &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.couponId, couponId) ||
                other.couponId == couponId) &&
            (identical(other.oran, oran) || other.oran == oran) &&
            (identical(other.tahmin, tahmin) || other.tahmin == tahmin) &&
            (identical(other.durum, durum) || other.durum == durum) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.taraflar, taraflar) &&
            const DeepCollectionEquality().equals(other.eventId, eventId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      couponId,
      oran,
      tahmin,
      durum,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(taraflar),
      const DeepCollectionEquality().hash(eventId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CouponCopyWith<_$_Coupon> get copyWith =>
      __$$_CouponCopyWithImpl<_$_Coupon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CouponToJson(
      this,
    );
  }
}

abstract class _Coupon implements Coupon {
  const factory _Coupon(
      {final int? id,
      final int? couponId,
      final String? oran,
      final String? tahmin,
      final String? durum,
      final String? createdAt,
      final String? updatedAt,
      final dynamic? taraflar,
      final dynamic? eventId}) = _$_Coupon;

  factory _Coupon.fromJson(Map<String, dynamic> json) = _$_Coupon.fromJson;

  @override
  int? get id;
  @override
  int? get couponId;
  @override
  String? get oran;
  @override
  String? get tahmin;
  @override
  String? get durum;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  dynamic? get taraflar;
  @override
  dynamic? get eventId;
  @override
  @JsonKey(ignore: true)
  _$$_CouponCopyWith<_$_Coupon> get copyWith =>
      throw _privateConstructorUsedError;
}
