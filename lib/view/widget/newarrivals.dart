import 'package:flutter/material.dart';
import 'package:rika/util/data/Productdata.dart';
import 'package:rika/view/widget/productlist.dart';

import '../../util/colors.dart';

class ArrivalsList extends StatelessWidget {
  const ArrivalsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: 327,
      height: 289,
      child: ListView.builder(
        padding: const EdgeInsets.all(5),
        scrollDirection: Axis.horizontal,
        itemCount: ProductData.length,
        itemBuilder: (BuildContext context, int i) {
          return ProductList(image: ProductData[i].image,
          title:ProductData[i].title ,
            subtitle: ProductData[i].subtitle,
            price: ProductData[i].price,
          );
        },
         )
    );
  }
}
