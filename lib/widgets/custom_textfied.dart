import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    required this.textLabel,
    required this.controller,
    required this.onSubmitted,
    required this.isNumber,
  }) : super(key: key);


  final String textLabel;
  final TextEditingController controller;
   bool isNumber  = false;
  void Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0, right: 50.0),
      child: TextField(
        controller: controller,
        keyboardType: isNumber ? TextInputType.number:TextInputType.name ,
        onSubmitted: onSubmitted,
        
        cursorColor: Colors.white,
        decoration: InputDecoration(
          labelStyle: TextStyle(
            color: Colors.black,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          labelText: textLabel,
        ),
      ),
    );
  }
}
