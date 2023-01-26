import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rika/util/onboardData.dart';

class OnBoardController extends GetxController{
     PageController? pageController;
  int current = 0;
  next(){
    current++;
    if (pageController!.hasClients) {
      if (current > onBoardList.length - 1) {
        Get.offNamed("/selectLogin");
      } else {
        pageController!.animateToPage(current,
            duration: const Duration(milliseconds: 900),
            curve: Curves.easeInOut);
      }
    }
  }
  @override
  Onchangedonbording(int i) {
    current = i;
    update();
  }
  @override
  void onInit() {
    pageController = PageController();
    // TODO: implement onInit
    super.onInit();
  }
}