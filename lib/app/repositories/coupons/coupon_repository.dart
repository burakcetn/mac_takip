import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/services/base_services/base_client.dart';
import 'package:getx_skeleton/app/services/coupon/coupon_service.dart';
import 'package:getx_skeleton/models/coupon/coupon_model.dart';

import '../../../models/data_result/data_result.dart';

class CouponRepository {
  CouponService service = Get.find();

  void getCoupons(
    Function(DataResult<List<CouponList>> response) onSuccess,
  ) {
    // BaseClient.safeApiCall<List<CouponList>>(
    //   service.coupons("new"),
    //   onSuccess: onSuccess,
    // );
  }
}
