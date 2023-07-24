// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CouponList _$$_CouponListFromJson(Map<String, dynamic> json) =>
    _$_CouponList(
      type: json['type'] as String?,
      coupons: (json['coupons'] as List<dynamic>?)
          ?.map((e) => Coupon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CouponListToJson(_$_CouponList instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coupons': instance.coupons,
    };

_$_Coupon _$$_CouponFromJson(Map<String, dynamic> json) => _$_Coupon(
      id: json['id'] as int?,
      couponId: json['couponId'] as int?,
      oran: json['oran'] as String?,
      tahmin: json['tahmin'] as String?,
      durum: json['durum'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      taraflar: json['taraflar'],
      eventId: json['eventId'],
    );

Map<String, dynamic> _$$_CouponToJson(_$_Coupon instance) => <String, dynamic>{
      'id': instance.id,
      'couponId': instance.couponId,
      'oran': instance.oran,
      'tahmin': instance.tahmin,
      'durum': instance.durum,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'taraflar': instance.taraflar,
      'eventId': instance.eventId,
    };
