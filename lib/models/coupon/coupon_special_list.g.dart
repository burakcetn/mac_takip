// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_special_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CouponSpecialList _$$_CouponSpecialListFromJson(Map<String, dynamic> json) =>
    _$_CouponSpecialList(
      couponId: json['couponId'] as int?,
      type: json['type'] as String?,
      durum: json['durum'] as String?,
      date: json['date'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CouponSpecialListToJson(
        _$_CouponSpecialList instance) =>
    <String, dynamic>{
      'couponId': instance.couponId,
      'type': instance.type,
      'durum': instance.durum,
      'date': instance.date,
      'items': instance.items,
    };

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      id: json['id'] as int?,
      couponId: json['couponId'] as int?,
      oran: json['oran'] as String?,
      tahmin: json['tahmin'] as String?,
      durum: json['durum'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      taraflar: json['taraflar'] as String?,
      eventId: json['eventId'] as int?,
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
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
