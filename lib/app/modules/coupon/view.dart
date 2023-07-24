import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class CouponPage extends GetView<CouponController> {
  const CouponPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CouponController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("coupon")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
