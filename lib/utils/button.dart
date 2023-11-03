import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconPath;
  final String textButton;

  const MyButton({
    super.key,
    required this.iconPath,
    required this.textButton,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            // color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 40,
                spreadRadius: 10,
              ),
            ],
          ),
          child: Center(
            child: Image.asset(iconPath),
          ),
        ),
        SizedBox(height: 4),
        Text(
          textButton,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
