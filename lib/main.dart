import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rika/view/Home.dart';
import 'package:rika/view/auth/login.dart';
import 'package:rika/view/auth/signUp.dart';
import 'package:rika/view/auth/success.dart';
import 'package:rika/view/categorie.dart';
import 'package:rika/view/onbording/onboarding1.dart';
import 'package:rika/view/onbording/selectLogin.dart';
import 'package:rika/view/onbording/splash.dart';
import 'package:rika/view/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: ()=> const ProductCategorie()),
        GetPage(name: "/selectLogin", page: ()=> const SelectLogin()),
        GetPage(name: "/onBoarding_one", page: ()=> const OnBoardingOne()),
        GetPage(name: "/login", page: ()=> const LogIn()),
        GetPage(name: "/signup", page: ()=> const SignUp()),
        GetPage(name: "/success", page: ()=> const SuccessLog()),
        GetPage(name: "/home", page: ()=> const Home()),
        GetPage(name: "/categories", page: ()=> const Categorie()),
        GetPage(name: "/productcategorie", page: ()=> const ProductCategorie()),
      ],

    );
  }
}

