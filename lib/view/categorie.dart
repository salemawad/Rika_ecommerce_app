import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rika/util/data/categorieData.dart';
import 'package:rika/util/image.dart';
import 'package:rika/view/product.dart';
import 'package:rika/view/widget/stackcategorie.dart';


class Categorie extends StatelessWidget {
  const Categorie({Key? key, this.range}) : super(key: key);

  final int? range;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: CircleAvatar(
                backgroundColor: Colors.black,
                child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Image.asset(Images.back),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            width: 260,
            height: 50,
            decoration: BoxDecoration(
                color: const Color(0xF3F4F5F6),
                borderRadius: BorderRadius.circular(30)),
            child: const Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                )),
            // color: const Color(0xF3F4F5F6),
          ),
          SizedBox(
            width: 350,
            height: 550,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,crossAxisSpacing: 15,mainAxisSpacing: 15),
              itemCount:CategorieData.length ,
              itemBuilder: (context, index) {
                return StackCategorie(
                    onTap: () {
                      Get.to(ProductCategorie(
                        category:CategorieData[index]["name"] ,
                        price:CategorieData[index]["price"] ,
                        image: CategorieData[index]["image"] ,
                        products: CategorieData[index]["products"] ,
                      ));

                    },
                    image: CategorieData[index]['image'],
                    title: CategorieData[index]['name'],
                    subtitle: CategorieData[index]['count']);
              },
            ),
          )
        ],
      ),
    );
  }
}
