import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reapp/backPage.dart';
import 'colors.dart' as color;

class SetupPage3 extends StatefulWidget {
  const SetupPage3({Key? key}) : super(key: key);

  @override
  _SetupPageState createState() => _SetupPageState();
}

class _SetupPageState extends State<SetupPage3> {
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
                "Are you a registered business?",
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
                        hintText: "Select yes/no",
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
                " Have you filled tac returns before?",
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
                    "Select yes/no",
                    style: TextStyle(
                        color:Colors.white
                    ),
                  ),
                ),

              ),
              SizedBox(height: 20,),
              Text(
                "I verify that i am an authorized representative of this organization and have the right to act on its behalf in the creation and management of this account.The organization and i agree to the additional Terms for business accounts",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 70,),
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
                  onPressed: ()=>Get.to(()=>(MyHomePage())),
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
