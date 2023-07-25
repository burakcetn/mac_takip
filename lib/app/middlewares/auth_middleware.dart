import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/components/CustomBottomNavbar/custom_buttom_navbar.dart';
import 'package:getx_skeleton/app/repositories/users/user_repository.dart';
import 'package:getx_skeleton/utils/page_argument.dart';

import '../routes/app_pages.dart';

class AuthMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    return UserRepository.getLoginedUser().user?.id != -1
        ? null
        : const RouteSettings(name: Routes.LOGIN);
  }

  @override
  GetPage? onPageCalled(GetPage? page) {
    page = page!.copy(
        name: page.name,
        transition: activePageIndex < prevPageIndex
            ? Transition.leftToRight
            : Transition.rightToLeft,
        arguments: PageArgument(page.name, page.arguments));
    CustomBottomNavbar.changePage(page: page);
    return super.onPageCalled(page);
  }
}
