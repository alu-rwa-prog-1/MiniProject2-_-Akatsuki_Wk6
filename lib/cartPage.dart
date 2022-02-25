import 'package:flutter/cupertino.dart';
import 'colors.dart' as color;
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reapp/wallet.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  void initState(){
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color.Appcolor.homePageBackground,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  color.Appcolor.homePageBackground.withOpacity(0.9),
                  color.Appcolor.homePageBackground
                ],
                begin: const FractionalOffset(0.0, 0.4),
                end: Alignment.topRight,
              )
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap:(){
                            Get.back();
                          },
                          child: Icon(Icons.arrow_back_ios, size: 20,
                              color: Colors.orangeAccent),
                        ),
                        Expanded(child: Container()),
                        Icon(Icons.info_outline, size: 20,
                            color: Colors.orangeAccent)
                      ],
                    ),
                    SizedBox(height: 30,),
                    Text(
                      "Ordered and Booked",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.orangeAccent
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Dishes",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.orangeAccent
                      ),
                    ),
                    SizedBox(height: 50,),
                    Row(
                      children: [
                        Container(
                          width: 90,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [
                                  color.Appcolor.SecondPageContainerGradient1stColor,
                                  color.Appcolor.SecondPageContainerGradient1stColor
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.timer,
                                  size: 20,
                                  color: color.Appcolor.SecondPageIconColor),
                              SizedBox(width: 5,),
                              Text(
                                "68 min",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: color.Appcolor.SecondPageIconColor
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 20,),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(child: Container(
                decoration: BoxDecoration(
                    color: color.Appcolor.homePageSubtitle,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(70)
                    )
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: 30,),
                        Text(
                          "Recent Orders/Books",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.orangeAccent
                          ),
                        ),
                        Expanded(child: Container()),
                        Row(
                          children: [
                            Icon(Icons.loop,size:30, color:Colors.orangeAccent),
                            SizedBox(width: 10,),
                          ],
                        ),
                      ],
                    )

                  ],
                ),
              )),

            ],
          ),
        ));
  }
}
