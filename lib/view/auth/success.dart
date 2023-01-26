import 'package:flutter/material.dart';
import 'package:rika/util/colors.dart';
import 'package:rika/util/image.dart';
import 'package:get/get.dart';
import '../widget/buttonSplash.dart';

class SuccessLog extends StatelessWidget {
  const SuccessLog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(children: [
        const Spacer(),
          Image.asset(Images.success),
          const Text(
            "Successful!",
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
          const Text("You have successfully registered in our app and start working in it.",style: TextStyle(
              color: AppColors.textColorLogin, fontSize: 14,),),
          const Spacer(),
          ButtonSelect(
            height: 50,
            width: 325,
            onPressed: () {
              Get.toNamed("/home");
            },
            margin: const EdgeInsets.only(top: 50, bottom: 5),
            colorButton: Colors.black,
            textButton: const Text(
              "Start Shopping",
              style: TextStyle(
                  color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        const SizedBox(
          height: 100,
        ),

      ]),

    );
  }
}
