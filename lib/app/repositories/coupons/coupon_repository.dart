import 'package:get/get.dart';
import 'package:getx_skeleton/app/services/coupon/coupon_service.dart';
import 'package:getx_skeleton/models/coupon/coupon_model.dart';

import '../../../models/coupon/coupon_special_list.dart';
import '../../../models/coupon/free_coupon.dart';
import '../../../models/data_result/data_result.dart';

class CouponRepository {
  CouponService service = Get.find();

  Future<DataResult<List<FreeCoupon>>> getFreeCoupons(COUPONTYPE type,
      {COUPONDATA mode = COUPONDATA.FREE}) async {
    var response =
        await service.freeCoupons(type == COUPONTYPE.NEW ? "new" : "old");
    var datalist = response.data
        .where((e) =>
            e.coupon.type == (mode == COUPONDATA.FREE ? "free" : "premium"))
        .toList();
    var result = DataResult<List<FreeCoupon>>(
        status: response.status, message: response.message, data: datalist);
    return result;
  }

  Future<DataResult<List<CouponSpecialList>>> getSepecialCoupons(
      COUPONTYPE type) {
    return service.couponsSpecial(type == COUPONTYPE.NEW ? "new" : "old");
  }
}

enum COUPONTYPE { NEW, OLD }

enum COUPONDATA { PREMIUM, FREE }
