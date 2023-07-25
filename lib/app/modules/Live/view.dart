import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/components/custom_future_builder.dart';
import 'package:getx_skeleton/models/match/live_match_model.dart';

import '../../../utils/color_manager.dart';
import '../../../utils/team_logo.dart';
import '../../components/CustomBottomNavbar/custom_buttom_navbar.dart';
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
        final double screenW = MediaQuery.of(context).size.width;

        return Scaffold(
          backgroundColor: ColorManager.base20,
          body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      height: 60,
                      width: 250,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: ColorManager.shadowColor.withOpacity(0.3),
                              blurRadius: 10),
                          BoxShadow(
                            color: ColorManager.shadowColor.withOpacity(0.3),
                            spreadRadius: -2,
                            blurRadius: 5,
                          ),
                        ],
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text(
                        "Canlı Skorlar",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: ColorManager.base00),
                      )),
                    ),
                  ),
                ),
                Expanded(
                    child: CustomFutureBuilder<List<LiveMatchModel>>(
                        future: controller.getLiveMatch(),
                        onError: (message) {
                          return Container();
                        },
                        onDataEmpty: () {
                          return Text("Canlı Maç Bulunamadı");
                        },
                        onSuccess: (items) {
                          return ListView.builder(
                              itemCount: items.length,
                              itemBuilder: (context, itemNumber) {
                                LiveMatchModel item = items[itemNumber];
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 24),
                                  child: Container(
                                    height: 80,
                                    width: screenW * 0.9,
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
                                      borderRadius: BorderRadius.circular(15),
                                      color: ColorManager.base00,
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                width: 10,
                                              ),
                                              SizedBox(
                                                width: 100,
                                                child: Text(
                                                  item.ev ?? "",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelLarge,
                                                ),
                                              ),
                                              ClipOval(
                                                child: Image.network(
                                                  TeamsLogo()
                                                      .getLogo(item.ev ?? ""),
                                                  width: 30,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 12.0),
                                              child: Text(
                                                "${item.evgol} - ${item.depgol}",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelMedium
                                                    ?.copyWith(
                                                        color:
                                                            Colors.deepOrange),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 8.0),
                                              child: Text(
                                                "${item.dk}",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelMedium
                                                    ?.copyWith(
                                                        color: Colors.grey),
                                              ),
                                            )
                                          ],
                                        ),
                                        Expanded(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Image.network(
                                                TeamsLogo()
                                                    .getLogo(item.konuk ?? ""),
                                                width: 30,
                                              ),
                                              SizedBox(
                                                width: 100,
                                                child: Text(
                                                  "${item.konuk}",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelLarge,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        }))
              ],
            ),
          ),
        );
      },
    );
  }
}
