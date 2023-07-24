import 'package:get/get.dart';

import 'controller.dart';

class PrecouponBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PrecouponController>(() => PrecouponController());
  }
}
