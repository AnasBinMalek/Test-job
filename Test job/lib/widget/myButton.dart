import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({required this.Button_name, Key? key}) : super(key: key);

  String? Button_name;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 26, 220, 237),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          child: Center(
            child: Text(
              "${Button_name}",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ));
  }
}
