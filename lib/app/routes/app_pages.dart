import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/FreeCoupon/index.dart';
import 'package:getx_skeleton/app/modules/Live/index.dart';
import 'package:getx_skeleton/app/modules/Profile/index.dart';
import 'package:getx_skeleton/app/modules/coupon/index.dart';
import 'package:getx_skeleton/app/modules/home/index.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.COUPON,
      page: () => CouponPage(),
      binding: CouponBinding(),
    ),
    GetPage(
      name: _Paths.FREECOUPON,
      page: () => FreecouponPage(),
      binding: FreecouponBinding(),
    ),
    GetPage(
      name: _Paths.LIVE,
      page: () => LivePage(),
      binding: LiveBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfilePage(),
      binding: ProfileBinding(),
    ),
  ];
}
