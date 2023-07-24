import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class FreecouponPage extends GetView<FreecouponController> {
  const FreecouponPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FreecouponController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("freecoupon")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
