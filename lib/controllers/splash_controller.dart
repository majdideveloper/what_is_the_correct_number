import 'dart:async';

import 'package:get/get.dart';
import 'package:what_is_the_correct_number/screens/screens.dart';

class SplashController extends GetxController{


@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Timer(Duration(seconds: 5), 
    () => Get.offAll(() => HomeScreen()));
  }



}

