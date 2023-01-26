import 'package:flutter/material.dart';

import '../../util/colors.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key, required this.image, required this.title, required this.subtitle, required this.price}) : super(key: key);

  final String image;
  final String title;
  final String subtitle;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(7),
        width: 155,
        height: 244.5,
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset(image),
                Align(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.black,
                    child: IconButton(onPressed: (){},
                      icon: const Icon(Icons.favorite_border,color: Colors.white),),),
                )
              ],
            ),
            const SizedBox(height: 7),
            Text(title,style: const TextStyle(fontSize: 14),),
            Text(subtitle,style: const TextStyle(overflow:TextOverflow.ellipsis ,fontSize: 11,color: AppColors.textColorLogin),),
            const SizedBox(height: 5),
            Text("\$ ${price}",style: const TextStyle(fontSize: 14),),

          ],
        )
    );
  }
}
