import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rika/controller/onBoardController.dart';
import 'package:rika/util/onboardData.dart';

class DoteBoard extends StatelessWidget {
  const DoteBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OnBoardController controllerr = Get.put(OnBoardController());
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GetBuilder<OnBoardController>(
          builder: ((controller) => Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                        onBoardList.length,
                        (index) => AnimatedContainer(
                              margin: const EdgeInsets.only(right: 5),
                              duration: const Duration(milliseconds: 900),
                              width: controller.current == index ? 20 : 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                            )),
                    Spacer(),
                    Material(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50),
                      child: IconButton(
                        onPressed: () => controllerr.next(),
                        icon: Icon(
                          Icons.navigate_next_outlined,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ]))),
    );
  }
}
