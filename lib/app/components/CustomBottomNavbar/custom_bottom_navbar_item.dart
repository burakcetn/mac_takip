import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';

typedef OnBottomItemClick = Function();

class CustomBottomNavbarItem {
  OnBottomItemClick onClickItem;
  BottomBarItem item;
  CustomBottomNavbarItem({
    required this.item,
    required this.onClickItem,
  });
}
