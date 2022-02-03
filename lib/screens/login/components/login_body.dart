import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/components/RoundedButton.dart';
import 'package:login_page/components/already_have_ac_account.dart';
import 'package:login_page/components/rounded_input_field.dart';
import 'package:login_page/components/rounded_password_field.dart';
import 'package:login_page/components/text_field_container.dart';
import 'package:login_page/container.dart';
import 'package:login_page/screens/login/components/background_login.dart';
import 'package:login_page/screens/login/login_screen.dart';
import 'package:login_page/screens/signup/signup_screen.dart';

class login_body extends StatelessWidget {
  const login_body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return background_login(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: GoogleFonts.lato(fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 1,
            ),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.32,
            ),
            SizedBox(
              height: 1,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(text: 'LOGIN', press: () {}),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
