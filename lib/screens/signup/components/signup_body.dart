import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/components/RoundedButton.dart';
import 'package:login_page/components/SocialIcon.dart';
import 'package:login_page/components/already_have_ac_account.dart';
import 'package:login_page/components/or_divider.dart';
import 'package:login_page/components/rounded_input_field.dart';
import 'package:login_page/components/rounded_password_field.dart';
import 'package:login_page/container.dart';
import 'package:login_page/screens/login/login_screen.dart';
import 'package:login_page/screens/signup/components/background_signup.dart';

class signup_body extends StatelessWidget {
  const signup_body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return background_signup(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'SIGNUP',
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w700,
              ),
            ),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.4,
            ),
            SizedBox(
              height: 7,
            ),
            RoundedInputField(
                hintText: "example@gmail.com", onChanged: (value) {}),
            RoundedPasswordField(onChanged: (value) {}),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
