import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../utils/color_manager.dart';
import '../../components/CustomBottomNavbar/custom_buttom_navbar.dart';
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
            backgroundColor: ColorManager.base20,
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 250,
                            width: 250,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: ColorManager.shadowColor
                                          .withOpacity(0.3),
                                      blurRadius: 10),
                                  BoxShadow(
                                    color: ColorManager.shadowColor
                                        .withOpacity(0.3),
                                    spreadRadius: -2,
                                    blurRadius: 5,
                                  ),
                                ],
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    opacity: 0.3,
                                    alignment: Alignment.topRight,
                                    image: AssetImage(
                                        "assets/images/coupon_background.png"))),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Özel Kupon",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge
                                        ?.copyWith(
                                            color: ColorManager.base00,
                                            fontWeight: FontWeight.w700),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Tarih: 13/07/2023",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge
                                              ?.copyWith(
                                                  color: ColorManager.base40),
                                        ),
                                        Text(
                                          "Maç Sayısı : 4",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge
                                              ?.copyWith(
                                                  color: ColorManager.base40),
                                        ),
                                        Text(
                                          "Toplam Oran : 25.30",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge
                                              ?.copyWith(
                                                  color: ColorManager.base40),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ));
      },
    );
  }
}
