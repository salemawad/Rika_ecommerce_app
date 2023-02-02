import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rika/util/image.dart';
import 'package:rika/view/widget/buttonSplash.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List <Map<String,dynamic>> icon=[
      {
        'icon':Icon(Icons.language,color: Colors.black,),
        'title':'Language',
        'icontrailing': Icon(Icons.arrow_forward_ios,color: Colors.black,)
      },
      {
        'icon':Icon(Icons.notification_important_rounded,color: Colors.black,),
        'title':'Notification',
        'icontrailing': Switch(value: false, onChanged: (value) {},)
      },
      {

        'icon':Icon(Icons.dark_mode,color: Colors.black,),
        'title':'Drak Mood ',
        'icontrailing': Switch(value: false, onChanged: (value) {},)
      },
      {

        'icon':Icon(Icons.help,color: Colors.black,),
        'title':'Help Center ',
        'icontrailing': Icon(Icons.arrow_forward_ios,color: Colors.black,)
      },
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Container(
                height: 90,
                width: 90,
                margin: const EdgeInsets.only(top: 19),
                child: Stack(children: [
                  Image.asset(Images.imageProfile),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.edit, color: Colors.black),
                      ),
                    ),
                  )
                ]),
              ),
              Container(
                margin: EdgeInsets.only(top: 65),
                height: 150,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 19),
                      child: Row(
                        children: const [
                          Text(
                            "Name",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xAAAAAAAA)),
                          ),
                          Padding(padding: EdgeInsets.only(left: 63)),
                          SizedBox(
                            width: 220,
                            child: Text("Salem Awad",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      child: Row(
                        children: [
                          const Text(
                            "Gender",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xAAAAAAAA)),
                          ),
                          Padding(padding: EdgeInsets.only(left: 52)),
                          Container(
                            width: 100,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Checkbox(
                                  activeColor: Colors.black,
                                  value: true,
                                  onChanged: (value) {},
                                ),
                                const Text("Male",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 11))
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: false,
                                  onChanged: (value) {},
                                ),
                                const Text("Female",
                                    style: TextStyle(
                                        color: Color(0xAAAAAAAA),
                                        fontSize: 11))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 18),
                      child: Row(
                        children: const [
                          Text(
                            "Age",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xAAAAAAAA)),
                          ),
                          Padding(padding: EdgeInsets.only(left: 80)),
                          SizedBox(
                            width: 220,
                            child: Text("22 Year",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black)),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: const [
                        Text(
                          "Email",
                          style: TextStyle(
                              fontSize: 14, color: Color(0xAAAAAAAA)),
                        ),
                        Padding(padding: EdgeInsets.only(left: 67)),
                        SizedBox(
                          width: 220,
                          child: Text("salem.b.awad@gmail.com",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 18),
                height: 300,
                width: double.infinity,
                child: Column(children: [
                 const Align(
                    alignment: Alignment.centerLeft,
                    child:  Text(
                      "Setting",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xDDDDDDDD),
                          width: 1.5,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child:ListView.builder(
                      itemCount: icon.length,
                      itemBuilder: (context, index) {
                      return  ListTile(
                        leading: Container(
                            decoration: BoxDecoration(
                                color: Color(0xEEEEEEEE),
                                borderRadius: BorderRadius.circular(10)),
                            width: 40,
                            height: 40,
                            child: icon[index]['icon']),
                        title: Text(icon[index]['title'],style: TextStyle(fontSize: 14)),
                        trailing:icon[index]['icontrailing'] ,
                      );
                    },)
                  )
                ]),
              ),
              ButtonSelect(
                  colorButton: Colors.black,
                  margin: EdgeInsets.only(top: 1),
                  onPressed: () {
                    Get.offAllNamed("/login");
                  },
                  textButton: Text("LogOut",style: TextStyle(color: Colors.white),), width: double.infinity, height: 50)
            ],
          ),
        ),
      ),
    );
  }
}
