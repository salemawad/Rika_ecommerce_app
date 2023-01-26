import 'package:flutter/material.dart';
import 'package:rika/view/widget/BottonNav.dart';
import 'package:rika/view/widget/productlist.dart';
import '../util/colors.dart';
import '../util/data/Productdata.dart';
import '../util/image.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductCategorie extends StatelessWidget {
  const ProductCategorie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AllBottomNav(),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 44, horizontal: 25),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(Images.back),
                  ),
                ),
                const Spacer(),
                const Icon(Icons.search)
              ],
            ),
          ),
          const Text(
            "Clothes",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 14.5,),
          SizedBox(
            height: 550,
            width: 350,
            child:  StaggeredGridView.countBuilder(
              physics: const BouncingScrollPhysics(),
              staggeredTileBuilder: (int index) =>
              const StaggeredTile.count(1, 1.6 ),
              crossAxisCount: 2,
              itemCount: ClothesData.length,
              itemBuilder: (BuildContext context, int i) {
                return ProductList(
                  image:ClothesData[i].image ,
                  title: ClothesData[i].title,
                  subtitle: ClothesData[i].subtitle,
                  price: ClothesData[i].price,
                ) ;
              },)
          )
        ],
      )),
    );
  }
}
// ProductList(image: ClothesData[i].image,
// title:ClothesData[i].title ,
// subtitle: ClothesData[i].subtitle,
// price: ClothesData[i].price,
// );