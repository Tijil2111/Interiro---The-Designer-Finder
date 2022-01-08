import 'package:flutter/material.dart';
import 'package:interior_designer_finder/pages/home.dart';
import 'package:interior_designer_finder/pages/how.dart';
import 'package:interior_designer_finder/pages/interior.dart';
// @dart=2.9
void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    initialRoute: '/',
    routes:{
      '/':(context) => HomePage(),
      '/how':(context) =>  HowToUse(),
      '/interior':(context)=> Interior(),
    }
  ));
}

