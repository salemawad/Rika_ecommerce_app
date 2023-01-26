import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rika/controller/onBoardController.dart';

import '../../util/onboardData.dart';

class SliderBoard extends GetView<OnBoardController> {
  const SliderBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.Onchangedonbording(val);
      },
      itemCount: onBoardList.length,
      itemBuilder: (context, i) {
        return Column(
          children: [
            SizedBox(
                width: 345,
                height: 450,
                child: Image.asset(onBoardList[i].image!)),
            const SizedBox(
              height: 30,
            ),
            Text(onBoardList[i].titel!,
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 10,
            ),
             Text(onBoardList[i].descryption!, style: const TextStyle(
                 fontSize: 15,
                 color: Color(0x66666666),
                 fontWeight: FontWeight.normal)),
          ],
        );
      },
    );
  }
}
