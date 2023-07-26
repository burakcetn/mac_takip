import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/routes/app_pages.dart';
import 'package:getx_skeleton/models/match/live_match_model.dart';
import 'package:getx_skeleton/utils/team_logo.dart';

import '../../../utils/color_manager.dart';
import '../../components/custom_future_builder.dart';
import '../../components/custom_snackbar.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: ColorManager.base20,
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarIconBrightness: Brightness.dark),
            elevation: 0,
            toolbarHeight: 80,
            leadingWidth: 80,
            centerTitle: true,
            leading: Padding(
              padding: const EdgeInsets.all(16.0),
              child: CircleAvatar(
                backgroundColor: ColorManager.base00,
                child: Icon(Icons.person),
              ),
            ),
            title: Text(
              "Uygulama Adı",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          backgroundColor: ColorManager.base20,
          body: ListView(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HomeCouponTypeButton(
                    bgColor: Theme.of(context).colorScheme.primary,
                    textColor: ColorManager.base00,
                    title: "Premium Tahminler",
                    routePath: Routes.PRECOUPON,
                  ),
                  HomeCouponTypeButton(
                    bgColor: ColorManager.base00,
                    textColor: ColorManager.base120,
                    title: "Günün Kuponu",
                    routePath: Routes.COUPON,
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
                child: Text(
                  "Öne Çıkan Maçlar",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              SizedBox(
                height: 200,
                child: CustomFutureBuilder<List<LiveMatchModel>>(
                  future: controller.getLiveMatch(),
                  onError: (message) {
                    return Container();
                  },
                  onDataEmpty: () {
                    return Text("Canlı Maç Bulunamadı");
                  },
                  onSuccess: (items) {
                    return PageView.builder(
                        physics: BouncingScrollPhysics(),
                        controller: controller.pageController,
                        itemCount: items.length < 5 ? items.length : 5,
                        itemBuilder: (context, itemNumber) {
                          LiveMatchModel item = items[itemNumber];
                          return LiveMatchItemWidget(
                              item: item, pageIndex: itemNumber);
                        });
                  },
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      crossAxisCount: 3),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        var route = controller.buttonText[index];
                        if (route.route.isNotEmpty) {
                          Get.toNamed(route.route, arguments: route.data);
                        }
                      },
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: ColorManager.base00,
                          boxShadow: [
                            BoxShadow(
                                color:
                                    ColorManager.shadowColor.withOpacity(0.3),
                                blurRadius: 10),
                            BoxShadow(
                              color: ColorManager.shadowColor.withOpacity(0.3),
                              spreadRadius: -2,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              controller.buttonText[index].title,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class LiveMatchItemWidget extends StatelessWidget {
  const LiveMatchItemWidget(
      {Key? key, required this.item, required this.pageIndex})
      : super(key: key);

  final LiveMatchModel item;
  final pageIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        height: 180,
        width: 180,
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
          image: DecorationImage(
            opacity: 0.3,
            alignment: Alignment.topRight,
            image: item.macid!.isEven
                ? AssetImage("assets/images/homepage_screen1.png")
                : AssetImage("assets/images/homepage_screen2.png"),
          ),
          color: pageIndex!.isEven ? Colors.purple : Colors.blueAccent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  item.lig ?? "",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                /*  Text(
                  "Week 10",
                  style: TextStyle(color: Colors.white),
                ),
             */
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 20,
                          child: Image.network(
                            TeamsLogo().getLogo(item.ev ?? ""),
                            width: 30,
                            errorBuilder: (context, error, stackTrace) =>
                                SizedBox.shrink(),
                          ),
                        ),
                        Text(
                          item.ev ?? "",
                          style: TextStyle(
                              color: Colors.white,
                              overflow: TextOverflow.ellipsis),
                        ),
                        Text("Home", style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text("${item.evgol}:${item.depgol}",
                          style: TextStyle(color: Colors.white)),
                      Container(
                        height: 40,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: pageIndex!.isOdd
                              ? Colors.purple
                              : Colors.blueAccent,
                        ),
                        child: Center(
                            child: Text(item.dk ?? "",
                                style: TextStyle(color: Colors.white))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 20,
                          child: Image.network(
                            TeamsLogo().getLogo(item.konuk ?? ""),
                            width: 30,
                            errorBuilder: (context, error, stackTrace) =>
                                SizedBox.shrink(),
                          ),
                        ),
                        Text(
                          item.konuk ?? "",
                          style: TextStyle(
                              color: Colors.white,
                              overflow: TextOverflow.ellipsis),
                        ),
                        Text("Guest", style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
