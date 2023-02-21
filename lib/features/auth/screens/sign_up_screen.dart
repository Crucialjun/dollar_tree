import 'package:dollar_tree/constants.dart';
import 'package:dollar_tree/features/auth/screens/sign_in_screen.dart';
import 'package:dollar_tree/features/auth/widgets/auth_screens_background.dart';
import 'package:dollar_tree/features/common/widgets/app_rounded_button.dart';
import 'package:dollar_tree/features/common/widgets/app_rounded_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreen extends StatelessWidget {
  static const String routeName = "signup_screen";
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: AuthScreensBackground(
            body:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                "SIGNUP",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              SvgPicture.asset(
                "assets/svgs/signup.svg",
                height: size.height * 0.3,
              ),
              const RoundedTextInput(
                  hintText: "Enter your Email", icon: Icons.person),
              const RoundedTextInput(
                obscureText: true,
                hintText: "Enter your Password",
                icon: Icons.lock,
                suffixIcon: Icons.visibility,
              ),
              const RoundedTextInput(
                obscureText: true,
                hintText: "Re-Enter your Password",
                icon: Icons.lock,
                suffixIcon: Icons.visibility,
              ),
              const SizedBox(
                height: 8,
              ),
              AppRoundedButton(
                text: "SIGN UP",
                onPressed: () {},
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account ? ",
                    style: TextStyle(color: kPrimaryColor),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, SigninScreen.routeName);
                    },
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                          color: kPrimaryColor, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
