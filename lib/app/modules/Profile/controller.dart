import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/repositories/users/user_repository.dart';
import 'package:getx_skeleton/utils/color_manager.dart';
import 'package:hive/hive.dart';

import 'index.dart';

class ProfileController extends GetxController with UserRepository {
  ProfileController();

  final state = ProfileState();

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

  Future<dynamic> showDialogContainer(
    BuildContext context,
  ) {
    return showDialog(
      useSafeArea: false,
      context: context,
      builder: (context) => Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.close,
                        color: Colors.black,
                      ))
                ]),
          ),
          body: Container(
            decoration: BoxDecoration(color: ColorManager.base00),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Text(
                      "İletinizi Giriniz",
                      style: Theme.of(context).textTheme.titleLarge,
                    )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Ad"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        style: Theme.of(context).textTheme.bodyLarge,
                        decoration: showDialogInputDecoration(
                            context, "Adınızı Giriniz"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Email"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        style: Theme.of(context).textTheme.bodyLarge,
                        decoration: showDialogInputDecoration(
                            context, "Mail Adresinizi Giriniz"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Mesaj"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        style: Theme.of(context).textTheme.bodyLarge,
                        decoration: showDialogInputDecoration(
                            context, "Mesajınızı Giriniz"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Container(
                          height: 45,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "Onayla",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 22),
                            ),
                          ),
                        ),
                      ),
                    )
                  ]),
            ),
          )),
    );
  }

  InputDecoration showDialogInputDecoration(
    BuildContext context,
    String hintText,
  ) {
    return InputDecoration(
      fillColor: Theme.of(context).colorScheme.primary.withOpacity(0.3),
      filled: true,
      hintText: hintText,
      hintStyle: Theme.of(context)
          .textTheme
          .bodyLarge
          ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: Colors.transparent),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: Colors.transparent),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: Colors.transparent),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: Colors.transparent),
      ),
    );
  }
}
