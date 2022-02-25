import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reapp/auth_controller.dart';
import 'colors.dart' as color;

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {

    // var emailController = TextEditingController();
    // var passwordController = TextEditingController();

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: color.Appcolor.homePageBackground,
        body: Column(
          children: [
            SizedBox(height: 50,),
            Container(
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
                        color: Colors.white
                    ),
                  ),
                  Text(
                    "SYSTEM",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "Create Account ",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
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
                      // controller: emailController,
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
                      // controller: passwordController,
                      obscureText: true,
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
                        // controller: passwordController,
                        obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
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
                  Container(
                    child:
                    Text(
                      "Add email and 8 character password",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.orangeAccent
                      ),
                    ),

                  ),

                ],
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                // AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
                     Get.toNamed("/choice/");
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
                    "SignUp",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
                text: TextSpan(
                  recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
              text: "Have an account?",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey
              )
            ))
          ],
        )
    );
  }
}
