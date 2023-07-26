import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/components/custom_future_builder.dart';
import 'package:getx_skeleton/app/repositories/users/user_repository.dart';
import 'package:getx_skeleton/models/data_result/data_result.dart';
import 'package:getx_skeleton/models/login/login_model.dart';

import '../../../utils/color_manager.dart';
import '../../components/AppbarClipper.dart';
import '../../components/CustomBottomNavbar/custom_buttom_navbar.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (_) {
        final double screenW = MediaQuery.of(context).size.width;
        var user = UserRepository.getLoginedUser();
        return Scaffold(
          backgroundColor: ColorManager.base20,
          body: Column(
            children: [
              SizedBox(
                height: 300,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: ClipPath(
                        clipper: AppbarClipper(),
                        child: Container(
                          height: 250,
                          width: double.maxFinite,
                          decoration: BoxDecoration(color: Colors.deepPurple),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 150,
                        width: screenW * 0.8,
                        decoration: BoxDecoration(
                          color: ColorManager.base00,
                          borderRadius: BorderRadius.circular(15),
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              user.user!.name!,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(
                                      color: ColorManager.base120,
                                      fontWeight: FontWeight.w600),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Üyelik Tipi :",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                Text(
                                  user.user!.role!,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    /*  Transform(
                      transform: Matrix4.translationValues(0, 50, 0),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: ColorManager.base00,
                          child: Icon(Icons.person),
                        ),
                      ),
                    ) */
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 80,
                  width: screenW * 0.8,
                  decoration: BoxDecoration(
                    color: ColorManager.base00,
                    borderRadius: BorderRadius.circular(15),
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
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Kalan Gün :",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                color: ColorManager.base120,
                                fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "text",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: ColorManager.base120,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 80,
                  width: screenW * 0.8,
                  decoration: BoxDecoration(
                    color: ColorManager.base00,
                    borderRadius: BorderRadius.circular(15),
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
                  ),
                  child: Center(
                    child: Text(
                      "Paketleri İncele",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: ColorManager.base120,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: GestureDetector(
                  onTap: () {
                    controller.deleteUser();
                  },
                  child: Container(
                    height: 60,
                    width: screenW * 0.8,
                    decoration: BoxDecoration(
                      color: ColorManager.failure,
                      borderRadius: BorderRadius.circular(15),
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
                    ),
                    child: Center(
                      child: Text(
                        "Hesabımı Kapat",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                color: ColorManager.base00,
                                fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: GestureDetector(
                  onTap: () {
                    controller.signOut();
                  },
                  child: Container(
                    height: 60,
                    width: screenW * 0.8,
                    decoration: BoxDecoration(
                      color: ColorManager.failure,
                      borderRadius: BorderRadius.circular(15),
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
                    ),
                    child: Center(
                      child: Text(
                        "Çıkış yap",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                color: ColorManager.base00,
                                fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
