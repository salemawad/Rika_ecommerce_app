import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rika/util/image.dart';

import '../widget/buttonSplash.dart';
import '../widget/textInput.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool chek=false ;
    // var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(padding: const EdgeInsets.all(10), children: [
        Image.asset(Images.logoD,
            alignment: Alignment.center, height: height / 4),
        const Text(
          "Sign Up",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Container(
            padding: const EdgeInsets.only(top: 15),
            child: const Text(
              "Create an new account",
            )),
        SizedBox(
          height: height / 30,
        ),
        CustomField(
          onChanged: (val) {},
          labelText: 'User Name',
          obscureText: false,
        ),
        const SizedBox(
          height: 10,
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
        const SizedBox(
          height: 10,
        ),
        CustomField(
          onChanged: (val) {},
          labelText: 'Confirm Password',
          obscureText: true,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
          Checkbox(value:chek , onChanged: (value) {
          },),
          const Text(
            "Agree to Create Your Account",
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],),
        ButtonSelect(
          height: 50,
          width: 325,
          onPressed: () {
            Get.toNamed("/success");
          },
          margin: const EdgeInsets.only(top: 50, bottom: 5),
          colorButton: Colors.black,
          textButton: const Text(
            "Sign Up",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ]),
    );
  }
}
