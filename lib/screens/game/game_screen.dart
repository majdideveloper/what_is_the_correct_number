import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:what_is_the_correct_number/controllers/game_controller.dart';
import 'package:what_is_the_correct_number/widgets/custom_button.dart';
import 'package:what_is_the_correct_number/widgets/widgets.dart';

class GameScreen extends StatelessWidget {
  String name;
  TextEditingController number = TextEditingController();
  GameScreen({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GameController controller = Get.put(GameController());
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              '$name',
              style: TextStyle(fontSize: 40),
            ),
            Text(
              'choose number between 1 1nd 10',
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
            CustomTextField(
              textLabel: 'Your Number Please',
              isNumber: true,
              controller: number,
              onSubmitted: (value) {
                number.text = value;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
           CustomButton(text: "VALIDATE YOUR NUMBER", onPressed: (){
              controller.numberChooseUser = int.parse(number.text);
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height / 2,
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  'your number is ',
                                  style: TextStyle(fontSize: 26),
                                ),
                                Text(
                                  '${controller.numberChooseUser}',
                                  style: TextStyle(fontSize: 26),
                                ),
                                Text(
                                  '${controller.compareBetweenNumbers()}',
                                  style: TextStyle(fontSize: 26),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
           })
          ],
        ),
      ),
    );
  }
}
