// To parse this JSON data, do
//
//     final freeCoupon = freeCouponFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'free_coupon.freezed.dart';
part 'free_coupon.g.dart';

FreeCoupon freeCouponFromJson(String str) =>
    FreeCoupon.fromJson(json.decode(str));

String freeCouponToJson(FreeCoupon data) => json.encode(data.toJson());

@freezed
class FreeCoupon with _$FreeCoupon {
  const factory FreeCoupon({
    int? id,
    String? oran,
    String? tahmin,
    String? durum,
    String? createdAt,
    String? updatedAt,
    dynamic? taraflar,
    dynamic? eventId,
    Coupon2? coupon,
    String? coupon_date,
  }) = _FreeCoupon;

  factory FreeCoupon.fromJson(Map<String, dynamic> json) =>
      _$FreeCouponFromJson(json);
}

@freezed
class Coupon2 with _$Coupon2 {
  const factory Coupon2({
    String? type,
    String? durum,
    String? date,
  }) = _Coupon2;

  factory Coupon2.fromJson(Map<String, dynamic> json) =>
      _$Coupon2FromJson(json);
}
