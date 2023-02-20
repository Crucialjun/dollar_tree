import 'package:dollar_tree/constants.dart';
import 'package:dollar_tree/features/common/widgets/app_rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SigninScreen extends StatelessWidget {
  static const String routeName = "signin_screen";
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "WELCOME TO DOLLAR TREE",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SvgPicture.asset(
                  "assets/svgs/welcomechat.svg",
                  height: size.height * 0.45,
                ),
                AppRoundedButton(
                  text: "LOGIN",
                  onPressed: () {
                    Navigator.pushNamed(context, SigninScreen.routeName);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                AppRoundedButton(
                  color: kPrimaryLightColor,
                  foregroundColor: Colors.black,
                  text: "SIGNUP",
                  onPressed: () {},
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
