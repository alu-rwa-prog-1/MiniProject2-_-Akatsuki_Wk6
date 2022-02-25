import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'colors.dart' as color;

class SuccPage extends StatefulWidget {
  const SuccPage({Key? key}) : super(key: key);

  @override
  _SuccPageState createState() => _SuccPageState();
}

class _SuccPageState extends State<SuccPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: color.Appcolor.homePageBackground,
        body: Container(
          padding: const EdgeInsets.only(top: 90, left: 60, right: 30),
          child: Container(
            child: Column(
              children: [
                Text(
                  "ALU RESTAURANT ",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "MANAGEMENT",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "SYSTEM ",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "Account Setup ",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "Payment was Successful ",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "Would you like to order again press back. ",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 80,),
                SizedBox(height: 80,),
                GestureDetector(
                  onTap: (){
                    Get.toNamed("/home");
                  },
                  child: Container(
                    width: w*0.5,
                    height: h*0.08,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/button.png"
                            ),
                            fit: BoxFit.cover
                        )
                    ),
                    child: Center(
                      child: Text(
                        "Back",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
