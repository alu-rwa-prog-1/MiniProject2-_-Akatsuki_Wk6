import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reapp/Setup2.dart';
import 'colors.dart' as color;

class SetupPage extends StatefulWidget {
  const SetupPage({Key? key}) : super(key: key);

  @override
  _SetupPageState createState() => _SetupPageState();
}

class _SetupPageState extends State<SetupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.Appcolor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 40, left: 30, right: 20),
        child: Container(
          child: Column(
            children: [
              Text(
                "Account Setup ",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.orangeAccent,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 10,),
              Text(
                " Please answer a few questions to setup",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                " your business profile. this wont take long.",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 50,),
              Text(
                "What is your business Legal Name?",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
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
                      hintText: "Enter Business Name",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.0
                          )
                      )
                  )
                ),
              ),
              SizedBox(height: 20,),
              Text(
                " Add Business logo",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: 500,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey
                ),


                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),),
                  onPressed: ()=>Get.to(()=>(null)),
                  child: Text(
                    "Add Logo",
                    style: TextStyle(
                        color:Colors.white
                    ),
                  ),
                ),

              ),
              SizedBox(height: 20,),
              Text(
                "Edit your business Public URL",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
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
                        hintText: "Your business public URL",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0
                            )
                        )
                    )
                ),
              ),
              SizedBox(height: 50,),
              Container(
                width: 500,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orangeAccent
                ),


                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.orangeAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),),
                  onPressed: ()=>Get.to(()=>(SetupPage2())),
                  child: Text(
                    "Submit",
                    style: TextStyle(
                        color:Colors.white
                    ),
                  ),
                ),

              ),
            ],
          ),
        ),
      ),

    );
  }
}
