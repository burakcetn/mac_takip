import 'package:dio/dio.dart';
import 'package:getx_skeleton/models/coupon/coupon_model.dart';
import 'package:getx_skeleton/models/coupon/coupon_special_list.dart';
import 'package:getx_skeleton/models/coupon/free_coupon.dart';
import 'package:getx_skeleton/models/data_result/data_result.dart';
import 'package:retrofit/retrofit.dart';
import '../../../utils/constants.dart';
part 'coupon_service.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class CouponService {
  factory CouponService(Dio dio, {String baseUrl}) = _CouponService;

  @GET("coupons")
  Future<DataResult<List<FreeCoupon>>> freeCoupons(
      @Query("status") String status);

  @GET("coupons-special-list")
  Future<DataResult<List<CouponSpecialList>>> couponsSpecial(
      @Query("status") String status);
}
