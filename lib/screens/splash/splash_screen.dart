import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:what_is_the_correct_number/controllers/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Text(
            'What is the Correct Number',
            style: TextStyle(fontSize: 36,fontFamily:'Pacifico' ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
