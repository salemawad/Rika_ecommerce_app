import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../util/image.dart';
import '../widget/buttonSplash.dart';

class SelectLogin extends StatelessWidget {
  const SelectLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
            alignment: Alignment.center, children: [
          SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                Images.background,
                fit: BoxFit.cover,
              )),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  height: 130,
                ),
                Image.asset(
                  height: 120,
                  width: 188,
                  Images.logo,
                ),
                const Spacer(),
                // SizedBox(height: 50),
                ButtonSelect(
                  height: 50,
                  width: 325,
                  margin: const EdgeInsets.only(top: 5),
                  textButton: const Text("Login", style: TextStyle(color: Colors.black)),
                  onPressed: () {
                    Get.toNamed("/login");
                  },
                  colorButton: Colors.white,
                ),
                const SizedBox(height: 15,),
                ButtonSelect(
                  height: 50,
                  width: 325,
                  margin: const EdgeInsets.only(top: 5),
                  textButton: const Text(
                    "Sign up",
                    style: TextStyle(color: Colors.white),
                  ),
                  colorButton: Colors.black12,
                  onPressed: () {
                    Get.toNamed("/signup");
                  },
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
