import 'package:flutter/material.dart';

class RowButton extends StatelessWidget {
  const RowButton({Key? key, required this.text, required this.textBold, required this.image, required this.textStyle, required this.textStyle1}) : super(key: key);

  final String text;
  final String textBold;
  final String image;
  final TextStyle textStyle;
  final TextStyle textStyle1;
   @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset("$image",
        ),
      ),
      Text(text,
          style: textStyle1

          ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          textBold,
          style:textStyle,
      ),)
    ]);
  }
}
