import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/FreeCoupon/index.dart';
import 'package:getx_skeleton/app/modules/Live/index.dart';
import 'package:getx_skeleton/app/modules/Login/bindings.dart';
import 'package:getx_skeleton/app/modules/Login/index.dart';
import 'package:getx_skeleton/app/modules/PreCoupon/index.dart';
import 'package:getx_skeleton/app/modules/Profile/index.dart';
import 'package:getx_skeleton/app/modules/coupon/index.dart';
import 'package:getx_skeleton/app/modules/home/index.dart';

import '../middlewares/auth_middleware.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static appRoutes() => [
        GetPage(
          name: Routes.HOME,
          page: () => HomePage(),
          binding: HomeBinding(),
          transition: Transition.rightToLeftWithFade,
          transitionDuration: 300.milliseconds,
          middlewares: [
            AuthMiddleWare(),
          ],
        ),
        GetPage(
          name: Routes.COUPON,
          page: () => CouponPage(),
          binding: CouponBinding(),
          transition: Transition.rightToLeftWithFade,
          transitionDuration: 300.milliseconds,
          middlewares: [
            AuthMiddleWare(),
          ],
        ),
        GetPage(
          name: Routes.FREECOUPON,
          page: () => FreecouponPage(),
          binding: FreecouponBinding(),
          transition: Transition.rightToLeftWithFade,
          transitionDuration: 300.milliseconds,
          middlewares: [
            AuthMiddleWare(),
          ],
        ),
        GetPage(
          name: Routes.PRECOUPON,
          page: () => PrecouponPage(),
          binding: PrecouponBinding(),
          transition: Transition.rightToLeftWithFade,
          transitionDuration: 300.milliseconds,
          middlewares: [
            AuthMiddleWare(),
          ],
        ),
        GetPage(
          name: Routes.LIVE,
          page: () => LivePage(),
          binding: LiveBinding(),
          transition: Transition.rightToLeftWithFade,
          transitionDuration: 300.milliseconds,
          middlewares: [
            AuthMiddleWare(),
          ],
        ),
        GetPage(
          name: Routes.PROFILE,
          page: () => ProfilePage(),
          binding: ProfileBinding(),
          transition: Transition.rightToLeftWithFade,
          transitionDuration: 300.milliseconds,
          middlewares: [
            AuthMiddleWare(),
          ],
        ),
        GetPage(
          name: Routes.LOGIN,
          page: () => LoginPage(),
          binding: LoginBinding(),
          transition: Transition.rightToLeftWithFade,
          transitionDuration: 300.milliseconds,
        ),
      ];
}
