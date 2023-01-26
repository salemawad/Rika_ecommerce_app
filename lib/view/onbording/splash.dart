import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rika/view/onbording/selectLogin.dart';

import '../../util/image.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3),()=> Get.toNamed("/onBoarding_one"));
    return Scaffold(
      body: Stack(
          children: [
          SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(Images.splash,
              fit: BoxFit.cover,)),
            Center(child: Image.asset(Images.logo),)
        ]),
    );
  }
}
