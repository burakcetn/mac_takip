import 'package:getx_skeleton/models/coupon/coupon_model.dart';
import 'package:getx_skeleton/models/coupon/coupon_special_list.dart';
import 'package:getx_skeleton/models/coupon/free_coupon.dart';
import 'package:getx_skeleton/models/login/login_model.dart';
import 'package:getx_skeleton/models/match/live_match_model.dart';
import 'package:getx_skeleton/models/register_model.dart';
import 'package:json_annotation/json_annotation.dart';

class ModelConverter<T> implements JsonConverter<T, Object> {
  const ModelConverter();
  @override
  T fromJson(Object json) {
    if (json is Map<String, dynamic>) {
      if (T == RegisterModel) return RegisterModel.fromJson(json) as T;
      if (T == LoginModel) return LoginModel.fromJson(json) as T;
      if (T == Coupon) return Coupon.fromJson(json) as T;
      if (T == CouponList) return CouponList.fromJson(json) as T;
      if (T == LiveMatchModel) return LiveMatchModel.fromJson(json) as T;
      if (T == CouponSpecialList) return CouponSpecialList.fromJson(json) as T;
      if (T == FreeCoupon) return FreeCoupon.fromJson(json) as T;
      if (T == Map<String, dynamic>) return json as T;
    }
    if (json is List) {
      if (T == RegisterModel) {
        return json.map((e) => RegisterModel.fromJson(e)).toList() as T;
      }
      if (T == RegisterModel) {
        return json.map((e) => RegisterModel.fromJson(e)).toList() as T;
      }
      if (T == LoginModel) {
        return json.map((e) => LoginModel.fromJson(e)).toList() as T;
      }
      if (T == List<Coupon>) {
        return json.map((e) => Coupon.fromJson(e)).toList() as T;
      }
      if (T == List<CouponList>) {
        return json.map((e) => CouponList.fromJson(e)).toList() as T;
      }
      if (T == List<LiveMatchModel>) {
        return json.map((e) => LiveMatchModel.fromJson(e)).toList() as T;
      }
      if (T == List<CouponSpecialList>) {
        return json.map((e) => CouponSpecialList.fromJson(e)).toList() as T;
      }
      if (T == List<FreeCoupon>) {
        return json.map((e) => FreeCoupon.fromJson(e)).toList() as T;
      }
      if (T == List) {
        return json as T;
      }
    }
    return json as T;
  }

  @override
  Object toJson(T? object) {
    if (T is RegisterModel) {
      return (T as RegisterModel).toJson();
    }
    if (T is LoginModel) {
      return (T as LoginModel).toJson();
    }
    if (T is CouponList) {
      return (T as CouponList).toJson();
    }
    if (T is Coupon) {
      return (T as Coupon).toJson();
    }

    throw Exception();
  }
}
