import 'package:get/get.dart';
import 'package:flutter/material.dart';

class NavigationController extends GetxController {
  static NavigationController instance = Get.find();
  final GlobalKey<NavigatorState> navigationKey = GlobalKey();

  Future<dynamic> navigateTo(String routeName){
    return navigationKey.currentState!.pushNamed(routeName);
  }
  getBack() => navigationKey.currentState!.pop();

}