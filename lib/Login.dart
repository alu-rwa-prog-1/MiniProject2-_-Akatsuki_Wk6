import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Signup.dart';
import 'colors.dart' as color;


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: color.Appcolor.homePageBackground,
      body: Column(
        children: [
          Container(
            width: w,
            height: h*0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/Art.PNG"
                ),
                fit: BoxFit.cover
              )

            ),
          ),
          SizedBox(height: 10,),
          Container(
            child: Column(
              children: [
                Text(
                  "ALU RESTAURANT ",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.orangeAccent,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "MANAGEMENT",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.orangeAccent
                  ),
                ),
                Text(
                  "SYSTEM",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.orangeAccent
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: Offset(1,1),
                        color: Colors.white.withOpacity(0.2)
                      )
                    ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email Address",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0
                        )
                      ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0
                            )
                        ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)
                      )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1,1),
                            color: Colors.white.withOpacity(0.2)
                        )
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(child: Container(),),
                    Text(
                      "Forgot password?",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.orangeAccent
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Get.toNamed("/choice");
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
                  "Login",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: w*0.08,),
          RichText(text: TextSpan(
              text: "Don\'t have an account?",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20
          ),
            children: [
              TextSpan(
              text: " Create",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                fontWeight: FontWeight.bold
              ),
                recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUp())
              )
            ]
          )
          )
        ],
      ),
    );
  }
}
