import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rika/view/widget/BottonNav.dart';
import 'package:rika/view/widget/productlist.dart';
import '../model/productmodel.dart';
import '../productDetail.dart';
import '../util/image.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductCategorie extends StatelessWidget {
  const ProductCategorie({Key? key,  this.category,  this.products, this.image, this.price, }) : super(key: key);
  final String? category;
  final String? image;
  final String? price;
  final List<ProductModel>? products;
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
                    onPressed: () {
                      Get.back();
                    },
                    icon: Image.asset(Images.back),
                  ),
                ),
                const Spacer(),
                const Icon(Icons.search)
              ],
            ),
          ),
           Text(
            category!,
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
              itemCount: products!.length,
              itemBuilder: (BuildContext context, int i) {
                return ProductList(
                  image:products![i].image ,
                  title: products![i].title,
                  subtitle: products![i].subtitle,
                  price: products![i].price,
                  onTap: () {
                    Get.to(ProductDetail( image:products![i].image ,
                    price: products![i].price ,
                      title: products![i].title,
                      subtitle: products![i].subtitle,
                                           ));
                  },
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