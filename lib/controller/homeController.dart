import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rika/profile.dart';
import 'package:rika/view/categorie.dart';

import '../view/Home.dart';
import '../view/cart.dart';

class HomeController extends GetxController{

  RxInt index =0.obs;
  List<Widget> pages = [
    HomePage(),
    Categorie(),
    Cart(),
    Profile()
  ];



}
