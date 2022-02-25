import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reapp/home_page.dart';
import 'colors.dart' as color;
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.Appcolor.homePageBackground,
      body:
      Stack(
        children: [
          Positioned(
              bottom: 0,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Easy Way",
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                    ),),
                  Text("To Eat",
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                    ),),
                  SizedBox(height: 40,),
                  SizedBox(
                      width: MediaQuery.of(context).size.width-25,
                      child: Text("We make your order easy ",
                        style: TextStyle(
                            color: Colors.white60
                        ),)),
                  SizedBox(height: 40,),
                  Container(
                    width: 200,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFffbc33e)
                    ),


                    child: ElevatedButton(

                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Color(0xFFfbc33e),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),),
                      onPressed: ()=>Get.to(()=>HomePage()),
                      child: Text(
                        "Get started",
                        style: TextStyle(
                            color:Colors.white
                        ),
                      ),
                    ),

                  ),
                  SizedBox(height: 70,),

                ],
              ))

        ],
      ),

    );
  }
}
