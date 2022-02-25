import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reapp/wallet.dart';
import 'cartPage.dart';
import 'colors.dart' as color;


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List info=[];
  List list=[];
  _initData() async {
   await DefaultAssetBundle.of(context).loadString("json/info.json").then((value){
      setState(() {
        info= json.decode(value);
      });
    });
   await DefaultAssetBundle.of(context).loadString("json/detail.json").then((value){
     setState(() {
       list= json.decode(value);
     });
   });
  }

  @override
  void initState(){
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    int _currentIndex  = 0;
    return Scaffold(
      backgroundColor: color.Appcolor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Hi There!",
                  style: TextStyle(
                      fontSize: 35,
                      color: color.Appcolor.homePageTitle,
                      fontWeight: FontWeight.w900),
                ),
                Expanded(child: Container()),
                InkWell(
                  onTap: (){
                    // Get.to(()=>CartPage());
                  },
                    child: Icon(Icons.shopping_cart, size: 30, color: color.Appcolor.homePageTitle))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  ""
                  "Wallet",
                  style: TextStyle(
                      fontSize: 20,
                      color: color.Appcolor.homePageTitle,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    color.Appcolor.homePageSubtitle.withOpacity(0.8),
                    color.Appcolor.homePageSubtitle.withOpacity(0.9),
                  ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(5, 8),
                        blurRadius: 10,
                        color: color.Appcolor.gradientSecond.withOpacity(0.2))
                  ]),
              child: Container(
                padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "15,750 RWF",
                      style: TextStyle(
                          fontSize: 30,
                          color: color.Appcolor.homePageContainerTextSmall),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Current Daily Balance",
                      style: TextStyle(
                        fontSize: 20,
                        color: color.Appcolor.homePageTitle,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(child: Container()),
                        InkWell(
                          onTap: (){
                            // Get.to(()=>VideoInfo());
                          },
                          child: Icon(
                            Icons.keyboard_arrow_right_rounded,
                            color: Colors.orangeAccent,
                            size: 40,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Available dishes",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: color.Appcolor.homePageTitle,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(child: OverflowBox(
              maxWidth: MediaQuery.of(context).size.width,
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  itemCount: (info.length.toDouble()/2).toInt(),
                    itemBuilder: (_, i){
                    int a =2*i;
                    int b = 2*i +1;
                    return GestureDetector(
                        onTap: (){
                          Get.toNamed("/detail/", arguments: {
                            'title': info[a]['title'].toString(),
                            'text': info[a]['text'].toString(),
                            'name': info[a]['name'].toString(),
                            'img': info[a]['img'].toString(),
                            'time': info[a]['time'].toString(),
                            'prize': info[a]['prize'].toString(),
                          });
                        },
                      child: Row(
                          children: [
                            Container(
                              width:(MediaQuery.of(context).size.width-90)/2,
                              height: 170,
                              margin: EdgeInsets.only(left:30,bottom: 15, top: 15),
                              padding: EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                  color:Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(
                                    info[a]['img']
                                  )
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    offset: Offset(5,5),
                                    color: color.Appcolor.gradientSecond.withOpacity(0.1)
                                  ),
                                  BoxShadow(
                                      blurRadius: 3,
                                      offset: Offset(-5,-5),
                                      color: color.Appcolor.gradientSecond.withOpacity(0.1)
                                  )
                                ]
                              ),
                              child: Center(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    info[a]['title'],
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: color.Appcolor.homePageBackground
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                                onTap: (){
                                Get.toNamed("/detail/", arguments: {
                                'title': info[b]['title'].toString(),
                                'text': info[b]['text'].toString(),
                                'name': info[b]['name'].toString(),
                                'img': info[b]['img'].toString(),
                                'time': info[b]['time'].toString(),
                                'prize': info[b]['prize'].toString(),
                                });
                                },
                              child: Container(
                                width: (MediaQuery.of(context).size.width-90)/2,
                                height: 170,
                                margin: EdgeInsets.only(left:30,bottom: 15, top: 15),
                                padding: EdgeInsets.only(bottom: 5),
                                decoration: BoxDecoration(
                                    color:Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            info[b]['img']
                                        )
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 3,
                                          offset: Offset(5,5),
                                          color: color.Appcolor.gradientSecond.withOpacity(0.1)
                                      ),
                                      BoxShadow(
                                          blurRadius: 3,
                                          offset: Offset(-5,-5),
                                          color: color.Appcolor.gradientSecond.withOpacity(0.1)
                                      )
                                    ]
                                ),
                                child: Center(
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      info[b]['title'],
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: color.Appcolor.homePageBackground
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                    );
                    }),
              ),
            )
            )
          ],
        ),
      ),
    );
  }
}
