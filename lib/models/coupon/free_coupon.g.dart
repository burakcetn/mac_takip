// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'free_coupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FreeCoupon _$$_FreeCouponFromJson(Map<String, dynamic> json) =>
    _$_FreeCoupon(
      id: json['id'] as int?,
      oran: json['oran'] as String?,
      tahmin: json['tahmin'] as String?,
      durum: json['durum'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      taraflar: json['taraflar'],
      eventId: json['eventId'],
      coupon: json['coupon'] == null
          ? null
          : Coupon2.fromJson(json['coupon'] as Map<String, dynamic>),
      coupon_date: json['coupon_date'] as String?,
    );

Map<String, dynamic> _$$_FreeCouponToJson(_$_FreeCoupon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'oran': instance.oran,
      'tahmin': instance.tahmin,
      'durum': instance.durum,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'taraflar': instance.taraflar,
      'eventId': instance.eventId,
      'coupon': instance.coupon,
      'coupon_date': instance.coupon_date,
    };

_$_Coupon2 _$$_Coupon2FromJson(Map<String, dynamic> json) => _$_Coupon2(
      type: json['type'] as String?,
      durum: json['durum'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$_Coupon2ToJson(_$_Coupon2 instance) =>
    <String, dynamic>{
      'type': instance.type,
      'durum': instance.durum,
      'date': instance.date,
    };
