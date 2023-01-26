import 'package:flutter/material.dart';
import 'package:rika/util/image.dart';

class AllBottomNav extends StatelessWidget {
  const AllBottomNav({Key? key,}) : super(key: key);
  // final void Function(int) onTap ;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
      BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 5,
      blurRadius: 7,
      offset: Offset(0, 3), // changes position of shadow
    ),
    ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30) ,
          topRight:Radius.circular(30)
        )
      ),
      height: 70,
      width: double.infinity,
      child: BottomNavigationBar(
        items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,color: Colors.black,
            ),
            label: "Home",),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,color: Colors.black
            ),
            label: "Cart",),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.notification_important_rounded,color: Colors.black
            ),
            label: "notify",),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,color: Colors.black
            ),
            label: "profile",),
      ],
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedLabelStyle: TextStyle(color: Colors.black),
        selectedItemColor: Color(0xEEEEEEEE),
      ),
    );
  }
}
