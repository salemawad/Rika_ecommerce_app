import 'package:flutter/material.dart';
import 'package:rika/view/widget/dote.dart';

import '../../controller/onBoardController.dart';
import '../widget/Slider.dart';
import 'package:get/get.dart';
class OnBoardingOne extends StatelessWidget {
  const OnBoardingOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OnBoardController controller=Get.put(OnBoardController());
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
              children: [
                Expanded(
                    flex: 1,
                    child:SliderBoard()),
                 DoteBoard()

              ],
          ),
        ),
      ),
    );
  }
}
