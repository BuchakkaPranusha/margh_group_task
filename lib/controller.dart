import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:margh_group/profile_page.dart';

import 'home_page.dart';

class BottomNavigationController extends GetxController{
  RxInt currentBottomNavigationIndex = 0.obs;
  List<Widget> bottomNavBarItems = [const HomePage(), const HomePage(), const ProfilePage(),];
  final PageController pageController = PageController();
  final today_pics_list =
  [
    {
    "image":"assets/pic_one.jpg",
    "color" : Colors.brown
  },
    {
      "image" :"assets/pic_two.jpg",
      "color" :Colors.blueGrey
    }
  ];
}