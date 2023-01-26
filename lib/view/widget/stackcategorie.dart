import 'package:flutter/material.dart';

class StackCategorie extends StatelessWidget {
  const StackCategorie({Key? key, required this.image, required this.title, required this.subtitle}) : super(key: key);

  final String image;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
      padding: EdgeInsets.all(5),
      width: 155,
      height: 170,
      child: Stack(
          alignment: Alignment.center,
          children: [
        Image.asset(image),
        Padding(
          padding: const EdgeInsets.only(top: 110),
          child: Container(
            width: 155,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white.withOpacity(0.8)),
            child: Column(children:  [
               Text(
                title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                ),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
