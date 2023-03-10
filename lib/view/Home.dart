import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rika/controller/homeController.dart';
import 'package:rika/view/widget/AppBar.dart';
import 'package:rika/view/widget/BottonNav.dart';
import 'package:rika/view/widget/listbulderhome.dart';
import 'package:rika/view/widget/newarrivals.dart';
import '../util/colors.dart';
import '../util/data/sliderhomeData.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    HomeController controller=Get.put(HomeController());
    return Obx(() {
      return Scaffold(
        appBar: controller.index ==0?const PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AllAppBar(),
        ):null,
        bottomNavigationBar:   AllBottomNav(
          onTap:(i) {
            controller.index.value=i;
          },
          current:controller.index.value ,
        ),
        body: IndexedStack(index: controller.index.value,
          children:controller.pages,)
      );
    });
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(15),
      children: [
        const Text(
          "Welcome!",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        const Text(
          "Our Rika Fashion App",
          style: TextStyle(
            color: AppColors.textColorLogin,
            fontSize: 20,
          ),
        ),

        Row(children: [
          Container(
            margin: const EdgeInsets.only(top: 15, bottom: 15),
            width: 260,
            height: 50,
            decoration: BoxDecoration(
                color:const Color(0xF3F4F5F6) ,
                borderRadius: BorderRadius.circular(30)),
            child: const Align(
                alignment: Alignment.centerLeft,
                child:  Icon(Icons.search,color: Colors.black,)),
            // color: const Color(0xF3F4F5F6),
          ),
          const SizedBox(width: 30,),
          const CircleAvatar(backgroundColor: Colors.black,
            child: Icon(Icons.filter_alt_outlined),)
        ],),
        SizedBox(
          width: double.infinity,
          height: 170,
          child: ListView.builder(
            padding: EdgeInsets.all(5),
            scrollDirection: Axis.horizontal,
            itemCount: sliderData.length,
            itemBuilder: (context, i) {
              return SliderHome(
                background: sliderData[i].image,
                header: sliderData[i].header,
                subTitle: sliderData[i].subtitle,
                textButton: sliderData[i].textButton,
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 7,right: 5),
          child: Row(children: [
            const Text("Categories",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Spacer(),
            InkWell(
                onTap: () {Get.toNamed("/categories");},
                child: const Text("View All",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: AppColors.textColorLogin),)),

          ]),
        ),
        const ArrivalsList(),
        SizedBox(height: 18,),
        Padding(
          padding: const EdgeInsets.only(top: 7,right: 5),
          child: Row(children:const[
            Text("Popular",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Spacer(),
            Text("View All",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: AppColors.textColorLogin),),

          ]),
        ),

        // ListTile(leading:Image.asset(Images.) ,)
      ],
    );
  }
}
