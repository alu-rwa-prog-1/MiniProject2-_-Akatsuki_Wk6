import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:reapp/Setup.dart';
import 'Login.dart';
import 'Setup.dart';
import 'backPage.dart';
import 'choice.dart';
import 'detail_page.dart';
import 'package:get/get.dart';


void main()  {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: DetailPage(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: ()=>LoginPage()),
        GetPage(name: "/detail", page: ()=>DetailPage()),
        GetPage(name: "/choice", page: ()=>ChoicePage()),
        GetPage(name: "/setup", page: ()=>SetupPage()),
        GetPage(name: "/home", page: ()=>MyHomePage()),
      ],
    );
  }
}