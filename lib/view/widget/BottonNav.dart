import 'package:flutter/material.dart';

class AllBottomNav extends StatelessWidget {
  const AllBottomNav({Key? key, this.onTap, this.current, }) : super(key: key);
  final void Function(int)? onTap ;
  final int? current;
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
        currentIndex: current!,
        onTap:onTap ,
        items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.category,
            ),
            label: "Categories",),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: "cart",),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "profile",),
      ],
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        unselectedItemColor: Colors.black54,
      ),
    );
  }
}
