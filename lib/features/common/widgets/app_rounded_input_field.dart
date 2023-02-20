import 'package:dollar_tree/constants.dart';
import 'package:flutter/material.dart';

class RoundedTextInput extends StatelessWidget {
  const RoundedTextInput(
      {super.key,
      required this.hintText,
      required this.icon,
      this.suffixIcon,
      this.obscureText = false});

  final String hintText;
  final IconData icon;
  final IconData? suffixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
          color: kPrimaryLightColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(29)),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            suffixIcon: Icon(
              suffixIcon,
              color: kPrimaryColor,
            ),
            icon: Icon(
              icon,
              color: kPrimaryColor,
            )),
      ),
    );
  }
}
