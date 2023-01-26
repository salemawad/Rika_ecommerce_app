import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rika/util/colors.dart';
import 'package:rika/util/image.dart';

import '../widget/buttonSplash.dart';
import '../widget/rowButton.dart';
import '../widget/textInput.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(padding: const EdgeInsets.all(10), children: [
        Image.asset(Images.logoD,
            alignment: Alignment.center, height: height / 4),
        const Text(
          "Welcome!",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Container(
            padding: const EdgeInsets.only(top: 15),
            child: const Text(
              "please login or sign up to continue our app",
            )),
        SizedBox(
          height: height / 30,
        ),
        CustomField(
          onChanged: (val) {},
          labelText: 'Email',
          obscureText: false,
        ),
        const SizedBox(
          height: 10,
        ),
        CustomField(
          onChanged: (val) {},
          labelText: 'Password',
          obscureText: true,
        ),
        ButtonSelect(
          height: 50,
          width: 325,
          onPressed: () {
            Get.toNamed("/success");
          },
          margin: const EdgeInsets.only(top: 50, bottom: 5),
          colorButton: Colors.black,
          textButton: const Text(
            "Login",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        const Center(
          child: Text("or"),
        ),
        ButtonSelect(
            height: 50,
            width: 325,
            onPressed: () {},
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            colorButton: const Color(0xff3b5998),
            textButton: const RowButton(
              text: "Continue with",
              textStyle1: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
              image: Images.facbook,
              textBold: 'Facebook',
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )),
        ButtonSelect(
            height: 50,
            width: 325,
            onPressed: () {},
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            colorButton: Colors.white,
            textButton: const RowButton(
              text: "Continue with",
              textStyle1: TextStyle(
                  color: AppColors.textColorLogin,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
              image: Images.google,
              textBold: 'Google',
              textStyle: TextStyle(
                  color: AppColors.textColorLogin,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )),
        ButtonSelect(
            height: 50,
            width: 325,
            onPressed: () {},
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            colorButton: Colors.white,
            textButton: const RowButton(
              text: "Continue with",
              textStyle1: TextStyle(
                  color: AppColors.textColorLogin,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
              image: Images.apple,
              textBold: 'Apple',
              textStyle: TextStyle(
                  color: Color(0x66666666),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )),
      ]),
    );
  }
}
