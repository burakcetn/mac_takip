// To parse this JSON data, do
//
//     final couponSpecialList = couponSpecialListFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'coupon_special_list.freezed.dart';
part 'coupon_special_list.g.dart';

CouponSpecialList couponSpecialListFromJson(String str) =>
    CouponSpecialList.fromJson(json.decode(str));

String couponSpecialListToJson(CouponSpecialList data) =>
    json.encode(data.toJson());

@freezed
class CouponSpecialList with _$CouponSpecialList {
  const factory CouponSpecialList({
    int? couponId,
    String? type,
    String? durum,
    String? date,
    List<Item>? items,
  }) = _CouponSpecialList;

  factory CouponSpecialList.fromJson(Map<String, dynamic> json) =>
      _$CouponSpecialListFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    int? id,
    int? couponId,
    String? oran,
    String? tahmin,
    String? durum,
    String? createdAt,
    String? updatedAt,
    String? taraflar,
    int? eventId,
    String? coupon_date,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
