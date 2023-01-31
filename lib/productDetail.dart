import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rika/util/image.dart';


class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key, this.image, this.price, this.subtitle, this.title}) : super(key: key);
  final String? image;
  final String? price;
  final String? subtitle;
  final String? title;
  @override
  Widget build(BuildContext context) {
    List size = ["S", "M", "L", "X", "XXL"];
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                    width: double.infinity,
                    child:Image.asset(image!, fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25,top: 44 ),
                  child: Row(
                  children: [
                    InkWell(
                      onTap: () => Get.back(),
                      child: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Image.asset(Images.back)),
                    ),
                    Spacer(),
                    const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.shopping_cart,color: Colors.black,))
                  ],
                  ),
                )
              ],
            )
           ,
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25,),
              margin: EdgeInsets.only(top: 30),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 326,
                    height: 69,
                    child: Row(
                      children: [
                        Column(
                          children:  [
                            Text(
                              title!,
                              style: const TextStyle(
                                  fontSize: 18, ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(subtitle!,
                                style: const TextStyle(
                                  fontSize: 11,
                                )),
                            const SizedBox(
                              height: 2,
                            ),
                            const Text("320 Review",
                                style: TextStyle(
                                  fontSize: 11,
                                )),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xEEEEEEEE)),
                              child: const Text("+ 1 -"),
                              alignment: Alignment.center,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 12.5),
                              child: Text("Avaliable in stok",
                                  style: TextStyle(
                                    fontSize: 11,
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      width: double.infinity,
                      height: 75,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                        Text("Size"),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                            height: 40,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: size.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 10),
                                  height: 50,
                                  width: 50,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white,
                                      border: const Border(top: BorderSide(width: 1,color: Colors.black),
                                          bottom:  BorderSide(width: 1,color: Colors.black),
                                          left: BorderSide(width: 1,color: Colors.black),
                                      right: BorderSide(width: 1,color: Colors.black)
                                  ),),
                                  child:  Text(
                                  size[index],
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 14),
                                ),
                                );
                              },
                            ))
                      ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22),
                    child: SizedBox(
                      width: double.infinity,
                      height: 85,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                        Text("Description",style: TextStyle(fontSize: 16),),
                        Container(
                          margin: EdgeInsets.only(top: 12,left: 15,right: 15),
                          height: 47,
                        width: double.infinity,
                        child:  Text(
                          subtitle!,
                            style: TextStyle(fontSize: 11),
                        ))
                      ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25,left:20 ),
                    child: Row(children: [
                      Column(children: [
                        const Text("Total Price",style: TextStyle(fontSize: 9),),
                        Text("\$$price",style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                      ],),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        width: 200,
                        child: MaterialButton(
                          height: 50,

                          color: Colors.black,
                          onPressed: () {
                        },child: Row(
                          children: const[
                            Icon(Icons.shopping_cart,color: Colors.white),
                            Text("Add to cart",style: TextStyle(color: Colors.white,fontSize: 16),)

                          ],
                        ),),
                      )
                    ],),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
