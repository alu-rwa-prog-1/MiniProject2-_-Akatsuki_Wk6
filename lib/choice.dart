import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'colors.dart' as color;

class ChoicePage extends StatefulWidget {
  const ChoicePage({Key? key}) : super(key: key);

  @override
  _ChoicePageState createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {
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
                  "Please select which type of Account you ",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "want to register. ",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold
                  ),
                ),
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
                        "Personal",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 80,),
                GestureDetector(
                  onTap: (){
                    Get.toNamed("/setup");
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
                        "Business",
                        style: TextStyle(
                            fontSize: 30,
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
