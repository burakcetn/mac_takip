import 'package:get/get.dart';

import 'controller.dart';

class FreecouponBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FreecouponController>(() => FreecouponController());
  }
}
