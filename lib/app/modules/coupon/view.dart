import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/components/custom_future_builder.dart';
import 'package:getx_skeleton/app/repositories/coupons/coupon_repository.dart';
import 'package:getx_skeleton/models/coupon/coupon_special_list.dart';
import 'package:getx_skeleton/models/data_result/data_result.dart';

import '../../../utils/color_manager.dart';
import '../../../utils/page_argument.dart';
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
    COUPONTYPE coupontype = COUPONTYPE.NEW;

    if (Get.arguments != null) {
      coupontype = Get.arguments as COUPONTYPE;
    }

    return GetBuilder<CouponController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: ColorManager.base20,
          body: Column(
            children: [
              Expanded(
                  child: CustomFutureBuilder<List<CouponSpecialList>>(
                      future: controller.getSepecialCoupons(coupontype),
                      onError: (error) {
                        return Center(
                          child: Text("Geçmiş Kupon Bulunamadı"),
                        );
                      },
                      onSuccess: (items) {
                        return ListView.builder(
                            itemCount: items.length + 1,
                            itemBuilder: (context, index) {
                              if (index == items.length) {
                                return SizedBox(
                                  height: 100,
                                );
                              }
                              CouponSpecialList item = items[index];
                              var total = item.items!
                                  .map((e) => double.parse(e.oran ?? "0"))
                                  .reduce((val, val2) => (val + val2));
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
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                      opacity: 0.3,
                                      alignment: Alignment.topRight,
                                      image: AssetImage(
                                        "assets/images/coupon_background.png",
                                      ),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 50.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          padding:
                                              const EdgeInsets.only(left: 50.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Tarih: ${item.date}",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleLarge
                                                    ?.copyWith(
                                                        color: ColorManager
                                                            .base40),
                                              ),
                                              Text(
                                                "Maç Sayısı : ${item.items?.length ?? 0}",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleLarge
                                                    ?.copyWith(
                                                        color: ColorManager
                                                            .base40),
                                              ),
                                              Text(
                                                "Toplam Oran : ${total.toStringAsFixed(2)}",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleLarge
                                                    ?.copyWith(
                                                        color: ColorManager
                                                            .base40),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                      onDataEmpty: () => SizedBox())),
            ],
          ),
        );
      },
    );
  }
}
