import 'package:flutter/material.dart';

class ButtonSelect extends StatelessWidget {
  const ButtonSelect({Key? key, required this.textButton,  this.colorButton, this.onPressed, this.margin, required this.width, required this.height}) : super(key: key);

  final Widget textButton;
  final double width;
  final double height;
  final Color? colorButton;
  final EdgeInsetsGeometry? margin;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:margin! ,
      width:width ,
      height:height ,
      child:  Material(
        child: TextButton(
          child:textButton,
          onPressed: onPressed,),
        borderRadius: BorderRadius.circular(30),
        color: colorButton,

      ),
    );
  }
}
