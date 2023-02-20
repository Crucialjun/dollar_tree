import 'package:dollar_tree/constants.dart';
import 'package:dollar_tree/features/auth/widgets/auth_screens_background.dart';
import 'package:dollar_tree/features/common/widgets/app_rounded_button.dart';
import 'package:dollar_tree/features/common/widgets/app_rounded_input_field.dart';
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
          child: SingleChildScrollView(
        child: AuthScreensBackground(
          body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/svgs/login.svg",
              height: size.height * 0.4,
            ),
            const RoundedTextInput(
                hintText: "Enter your Email", icon: Icons.person),
            const RoundedTextInput(
              obscureText: true,
              hintText: "Enter your Password",
              icon: Icons.lock,
              suffixIcon: Icons.visibility,
            ),
            const SizedBox(
              height: 8,
            ),
            AppRoundedButton(
              text: "LOGIN",
              onPressed: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Dont have an account ? ",
                  style: TextStyle(color: kPrimaryColor),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "Sign UP",
                    style: TextStyle(
                        color: kPrimaryColor, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ]),
        ),
      )),
    );
  }
}
