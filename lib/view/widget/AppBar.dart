import 'package:flutter/material.dart';
import 'package:rika/util/image.dart';

class AllAppBar extends StatelessWidget {
  const AllAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10,left: 10),
      margin: EdgeInsets.only(top: 44),
      child: AppBar(
        elevation: 0,
         backgroundColor: Colors.white,
        leading: CircleAvatar(
            backgroundColor: Colors.black,
            child: Image.asset(Images.menu,)),
        actions: [
          CircleAvatar(
              backgroundColor: Color(0xDDDDDDDD),
              child:  Image.asset(Images.profile)),
        ],
      ),
    );
  }
}
