import 'package:flutter/material.dart';
import 'package:untitled/Home/Home.dart';
import 'package:untitled/Home/Login_Page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/Utilities/routes.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home:Home_Page(),
    themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
      "/": (context)=>LoginPage(),
      MyRoutes.homeRoute: (context)=>Home_Page(),
        MyRoutes.loginRoute: (context)=>LoginPage(),
      },
    );
  }
}
