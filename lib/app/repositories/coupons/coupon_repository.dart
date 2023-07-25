import 'package:get/get.dart';
import 'package:getx_skeleton/app/services/coupon/coupon_service.dart';
import 'package:getx_skeleton/models/coupon/coupon_model.dart';

import '../../../models/coupon/coupon_special_list.dart';
import '../../../models/coupon/free_coupon.dart';
import '../../../models/data_result/data_result.dart';

class CouponRepository {
  CouponService service = Get.find();

  Future<DataResult<List<FreeCoupon>>> getFreeCoupons(COUPONTYPE type) {
    return service.freeCoupons(type == COUPONTYPE.NEW ? "new" : "old");
  }

  Future<DataResult<List<CouponSpecialList>>> getSepecialCoupons(
      COUPONTYPE type) {
    return service.couponsSpecial(type == COUPONTYPE.NEW ? "new" : "old");
  }
}

enum COUPONTYPE { NEW, OLD }
