import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:what_is_the_correct_number/config/themes.dart';

import 'package:what_is_the_correct_number/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Themes.lightTheme,
      home:SplashScreen() ,
    );
  }
}

