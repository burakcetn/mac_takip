import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class LivePage extends GetView<LiveController> {
  const LivePage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LiveController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("live")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
