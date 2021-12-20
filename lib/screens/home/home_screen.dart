import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:what_is_the_correct_number/widgets/custom_appbar.dart';
import 'package:what_is_the_correct_number/widgets/custom_button.dart';
import 'package:what_is_the_correct_number/widgets/widgets.dart';

import '../screens.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome',
              style: TextStyle(fontSize: 40),
            ),
            Text(
              'Your Name Please',
              style: TextStyle(fontSize: 26),
            ),
            CustomTextField(
              textLabel: 'Your Name',
              isNumber: false,
              controller: nameController,
              onSubmitted: (value) {
                nameController.text = value;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            CustomButton(
                text: "GO TO PLAY",
                onPressed: () {
                  Get.offAll(GameScreen(
                    name: nameController.text,
                  ));
                  
                })
          ],
        ),
      ),
    );
  }
}
