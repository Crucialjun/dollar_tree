import 'package:flutter/material.dart';

class AuthScreensBackground extends StatelessWidget {
  const AuthScreensBackground({
    super.key,
    required this.body,
  });

  final Widget body;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(alignment: Alignment.center, children: [
        Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/main_top2.png",
              width: size.width * 0.3,
            )),
        Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/main_bottom2.png",
              width: size.width * 0.25,
            )),
        body
      ]),
    );
  }
}
