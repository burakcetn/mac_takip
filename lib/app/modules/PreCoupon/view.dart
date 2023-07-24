import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class PrecouponPage extends GetView<PrecouponController> {
  const PrecouponPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PrecouponController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("precoupon")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
