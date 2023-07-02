import 'package:distributor_oli/splash/splash.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false, home: Splash());
  }
}
