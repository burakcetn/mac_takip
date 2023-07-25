import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/repositories/coupons/coupon_repository.dart';
import 'package:getx_skeleton/app/repositories/match/match_repository.dart';
import 'package:getx_skeleton/app/repositories/users/user_repository.dart';
import 'package:getx_skeleton/app/routes/app_pages.dart';
import 'package:getx_skeleton/models/match/live_match_model.dart';

import 'index.dart';

class ButtonModel {
  String title;
  String route;
  dynamic data;
  ButtonModel(this.title, this.route, {this.data});
}

class HomeController extends GetxController with MatchRepository {
  HomeController();
  final PageController pageController = PageController(viewportFraction: 0.8);
  final state = HomeState();
  List<ButtonModel> buttonText = [
    ButtonModel("Ücretsiz Tahminler", Routes.FREECOUPON),
    ButtonModel("Premium Tahminler", Routes.PRECOUPON),
    ButtonModel("Geçmiş Tahminler", Routes.FREECOUPON, data: COUPONTYPE.OLD),
    ButtonModel("Özel Kupon", Routes.COUPON),
    ButtonModel("Geçmiş Kuponlar", Routes.COUPON, data: COUPONTYPE.OLD),
    ButtonModel("Canlı Maçlar", Routes.LIVE)
  ];

  // tap
  void handleTap(int index) {
    Get.snackbar(
      "标题",
      "消息",
    );
  }

  /// 在 widget 内存中分配后立即调用。
  @override
  void onInit() {
    super.onInit();
  }

  /// 在 onInit() 之后调用 1 帧。这是进入的理想场所
  @override
  void onReady() {
    super.onReady();
  }

  /// 在 [onDelete] 方法之前调用。
  @override
  void onClose() {
    super.onClose();
  }

  /// dispose 释放内存
  @override
  void dispose() {
    super.dispose();
  }
}
