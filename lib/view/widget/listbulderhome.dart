import 'package:flutter/material.dart';

import 'buttonSplash.dart';

class SliderHome extends StatelessWidget {
  const SliderHome({Key? key, required this.background, required this.header, required this.subTitle, required this.textButton}) : super(key: key);

 final String background;
 final String header;
 final String subTitle;
 final String textButton;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 7),
      width: 260,
      height: 160,
      child: Stack(
        children: [
          Image.asset(background),
          Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                   Text(
                    header,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   Text(
                    subTitle,
                    style: TextStyle(fontSize: 15),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "With code: rikafashion2021",
                    style: TextStyle(
                        fontSize: 11, color: Color(0x66666666)),),
                  ButtonSelect(
                    width: 70,
                    height: 25,
                    textButton:  Text(textButton,style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),
                    margin: EdgeInsets.only(top: 10),
                    colorButton: Colors.black,
                    onPressed: () {
                    },
                  ),
                ],
              ))
        ],
      ),
    )
    ;
  }
}
