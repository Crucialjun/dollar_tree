import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "splash_screen";
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Lottie.asset("assets/jsons/money_tree_animation.json",
                repeat: false),
          )),
          const SizedBox(
            height: 24,
          ),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText("Dollar Tree",
                  textStyle: const TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 200))
            ],
            isRepeatingAnimation: false,
          ),
          const SizedBox(
            height: 48,
          )
        ],
      ),
    );
  }
}
