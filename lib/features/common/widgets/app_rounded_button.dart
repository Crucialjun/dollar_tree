import 'package:dollar_tree/constants.dart';
import 'package:flutter/material.dart';

class AppRoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color foregroundColor;

  const AppRoundedButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.color = kPrimaryColor,
      this.foregroundColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: color, foregroundColor: foregroundColor),
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(text),
          ),
        ),
      ),
    );
  }
}
