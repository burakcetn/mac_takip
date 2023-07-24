import 'package:get/get.dart';

import 'controller.dart';

class LiveBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LiveController>(() => LiveController());
  }
}
