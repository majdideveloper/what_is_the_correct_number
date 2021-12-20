import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String text;
  void Function()? onPressed;
  CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
      padding: const EdgeInsets.only(left: 50.0, right: 50.0),
        child: ElevatedButton(
          
          onPressed: onPressed,
          child: Text(text),
        ),
      ),
    );
  }
}
