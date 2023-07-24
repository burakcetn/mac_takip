import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/FreeCoupon/index.dart';
import 'package:getx_skeleton/app/modules/Live/index.dart';
import 'package:getx_skeleton/app/modules/Login/bindings.dart';
import 'package:getx_skeleton/app/modules/Login/index.dart';
import 'package:getx_skeleton/app/modules/PreCoupon/index.dart';
import 'package:getx_skeleton/app/modules/Profile/index.dart';
import 'package:getx_skeleton/app/modules/coupon/index.dart';
import 'package:getx_skeleton/app/modules/home/index.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static appRoutes() => [
        GetPage(
          name: Routes.HOME,
          page: () => HomePage(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: Routes.COUPON,
          page: () => CouponPage(),
          binding: CouponBinding(),
        ),
        GetPage(
          name: Routes.FREECOUPON,
          page: () => FreecouponPage(),
          binding: FreecouponBinding(),
        ),
        GetPage(
          name: Routes.PRECOUPON,
          page: () => PrecouponPage(),
          binding: PrecouponBinding(),
        ),
        GetPage(
          name: Routes.LIVE,
          page: () => LivePage(),
          binding: LiveBinding(),
        ),
        GetPage(
          name: Routes.PROFILE,
          page: () => ProfilePage(),
          binding: ProfileBinding(),
        ),
        GetPage(
          name: Routes.LOGIN,
          page: () => LoginPage(),
          binding: LoginBinding(),
        ),
      ];
}
