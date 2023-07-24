import 'package:freezed_annotation/freezed_annotation.dart';
part 'coupon_model.freezed.dart';
part 'coupon_model.g.dart';

@freezed
class CouponList with _$CouponList {
  const factory CouponList({
    String? type,
    List<Coupon>? coupons,
  }) = _CouponList;

  factory CouponList.fromJson(Map<String, dynamic> json) =>
      _$CouponListFromJson(json);
}

@freezed
class Coupon with _$Coupon {
  const factory Coupon({
    int? id,
    int? couponId,
    String? oran,
    String? tahmin,
    String? durum,
    String? createdAt,
    String? updatedAt,
    dynamic? taraflar,
    dynamic? eventId,
  }) = _Coupon;

  factory Coupon.fromJson(Map<String, dynamic> json) => _$CouponFromJson(json);
}
