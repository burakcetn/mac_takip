// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_special_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CouponSpecialList _$CouponSpecialListFromJson(Map<String, dynamic> json) {
  return _CouponSpecialList.fromJson(json);
}

/// @nodoc
mixin _$CouponSpecialList {
  int? get couponId => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get durum => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  List<Item>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponSpecialListCopyWith<CouponSpecialList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponSpecialListCopyWith<$Res> {
  factory $CouponSpecialListCopyWith(
          CouponSpecialList value, $Res Function(CouponSpecialList) then) =
      _$CouponSpecialListCopyWithImpl<$Res, CouponSpecialList>;
  @useResult
  $Res call(
      {int? couponId,
      String? type,
      String? durum,
      String? date,
      List<Item>? items});
}

/// @nodoc
class _$CouponSpecialListCopyWithImpl<$Res, $Val extends CouponSpecialList>
    implements $CouponSpecialListCopyWith<$Res> {
  _$CouponSpecialListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponId = freezed,
    Object? type = freezed,
    Object? durum = freezed,
    Object? date = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      couponId: freezed == couponId
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      durum: freezed == durum
          ? _value.durum
          : durum // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CouponSpecialListCopyWith<$Res>
    implements $CouponSpecialListCopyWith<$Res> {
  factory _$$_CouponSpecialListCopyWith(_$_CouponSpecialList value,
          $Res Function(_$_CouponSpecialList) then) =
      __$$_CouponSpecialListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? couponId,
      String? type,
      String? durum,
      String? date,
      List<Item>? items});
}

/// @nodoc
class __$$_CouponSpecialListCopyWithImpl<$Res>
    extends _$CouponSpecialListCopyWithImpl<$Res, _$_CouponSpecialList>
    implements _$$_CouponSpecialListCopyWith<$Res> {
  __$$_CouponSpecialListCopyWithImpl(
      _$_CouponSpecialList _value, $Res Function(_$_CouponSpecialList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponId = freezed,
    Object? type = freezed,
    Object? durum = freezed,
    Object? date = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_CouponSpecialList(
      couponId: freezed == couponId
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      durum: freezed == durum
          ? _value.durum
          : durum // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CouponSpecialList implements _CouponSpecialList {
  const _$_CouponSpecialList(
      {this.couponId,
      this.type,
      this.durum,
      this.date,
      final List<Item>? items})
      : _items = items;

  factory _$_CouponSpecialList.fromJson(Map<String, dynamic> json) =>
      _$$_CouponSpecialListFromJson(json);

  @override
  final int? couponId;
  @override
  final String? type;
  @override
  final String? durum;
  @override
  final String? date;
  final List<Item>? _items;
  @override
  List<Item>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CouponSpecialList(couponId: $couponId, type: $type, durum: $durum, date: $date, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CouponSpecialList &&
            (identical(other.couponId, couponId) ||
                other.couponId == couponId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.durum, durum) || other.durum == durum) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, couponId, type, durum, date,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CouponSpecialListCopyWith<_$_CouponSpecialList> get copyWith =>
      __$$_CouponSpecialListCopyWithImpl<_$_CouponSpecialList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CouponSpecialListToJson(
      this,
    );
  }
}

abstract class _CouponSpecialList implements CouponSpecialList {
  const factory _CouponSpecialList(
      {final int? couponId,
      final String? type,
      final String? durum,
      final String? date,
      final List<Item>? items}) = _$_CouponSpecialList;

  factory _CouponSpecialList.fromJson(Map<String, dynamic> json) =
      _$_CouponSpecialList.fromJson;

  @override
  int? get couponId;
  @override
  String? get type;
  @override
  String? get durum;
  @override
  String? get date;
  @override
  List<Item>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_CouponSpecialListCopyWith<_$_CouponSpecialList> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  int? get id => throw _privateConstructorUsedError;
  int? get couponId => throw _privateConstructorUsedError;
  String? get oran => throw _privateConstructorUsedError;
  String? get tahmin => throw _privateConstructorUsedError;
  String? get durum => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get taraflar => throw _privateConstructorUsedError;
  int? get eventId => throw _privateConstructorUsedError;
  String? get coupon_date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {int? id,
      int? couponId,
      String? oran,
      String? tahmin,
      String? durum,
      String? createdAt,
      String? updatedAt,
      String? taraflar,
      int? eventId,
      String? coupon_date});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

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
    Object? coupon_date = freezed,
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
              as String?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int?,
      coupon_date: freezed == coupon_date
          ? _value.coupon_date
          : coupon_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$_ItemCopyWith(_$_Item value, $Res Function(_$_Item) then) =
      __$$_ItemCopyWithImpl<$Res>;
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
      String? taraflar,
      int? eventId,
      String? coupon_date});
}

/// @nodoc
class __$$_ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res, _$_Item>
    implements _$$_ItemCopyWith<$Res> {
  __$$_ItemCopyWithImpl(_$_Item _value, $Res Function(_$_Item) _then)
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
    Object? coupon_date = freezed,
  }) {
    return _then(_$_Item(
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
              as String?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int?,
      coupon_date: freezed == coupon_date
          ? _value.coupon_date
          : coupon_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Item implements _Item {
  const _$_Item(
      {this.id,
      this.couponId,
      this.oran,
      this.tahmin,
      this.durum,
      this.createdAt,
      this.updatedAt,
      this.taraflar,
      this.eventId,
      this.coupon_date});

  factory _$_Item.fromJson(Map<String, dynamic> json) => _$$_ItemFromJson(json);

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
  final String? taraflar;
  @override
  final int? eventId;
  @override
  final String? coupon_date;

  @override
  String toString() {
    return 'Item(id: $id, couponId: $couponId, oran: $oran, tahmin: $tahmin, durum: $durum, createdAt: $createdAt, updatedAt: $updatedAt, taraflar: $taraflar, eventId: $eventId, coupon_date: $coupon_date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Item &&
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
            (identical(other.taraflar, taraflar) ||
                other.taraflar == taraflar) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.coupon_date, coupon_date) ||
                other.coupon_date == coupon_date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, couponId, oran, tahmin,
      durum, createdAt, updatedAt, taraflar, eventId, coupon_date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemCopyWith<_$_Item> get copyWith =>
      __$$_ItemCopyWithImpl<_$_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {final int? id,
      final int? couponId,
      final String? oran,
      final String? tahmin,
      final String? durum,
      final String? createdAt,
      final String? updatedAt,
      final String? taraflar,
      final int? eventId,
      final String? coupon_date}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

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
  String? get taraflar;
  @override
  int? get eventId;
  @override
  String? get coupon_date;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCopyWith<_$_Item> get copyWith => throw _privateConstructorUsedError;
}
