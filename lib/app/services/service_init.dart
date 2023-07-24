import 'package:get/get.dart';
import 'package:getx_skeleton/app/services/base_services/base_client.dart';
import 'package:getx_skeleton/app/services/coupon/coupon_service.dart';
import 'package:getx_skeleton/app/services/match/match_service.dart';
import 'package:getx_skeleton/app/services/user/user_service.dart';
import 'package:logger/logger.dart';

import '../repositories/coupons/coupon_repository.dart';

class ServiceInit {
  static Future init() async {
    Get.put(UserService(BaseClient.dio), permanent: true);
    Get.put(CouponService(BaseClient.dio), permanent: true);
    Get.put(MatchService(BaseClient.dio), permanent: true);
    CouponRepository().getCoupons((response) => Logger().d(response));
  }
}
