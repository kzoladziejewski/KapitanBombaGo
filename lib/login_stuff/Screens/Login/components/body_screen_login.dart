import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kapitan_bomba_go/components/already_have_an_account_acheck.dart';
import 'package:kapitan_bomba_go/components/forgot_password.dart';
import 'package:kapitan_bomba_go/components/rounded_button.dart';
import 'package:kapitan_bomba_go/components/rounded_input_field.dart';
import 'package:kapitan_bomba_go/components/rounded_password_field.dart';
import 'package:kapitan_bomba_go/components/text_field_container.dart';
import 'package:kapitan_bomba_go/constants/constants.dart';
import 'package:kapitan_bomba_go/login_stuff/Screens/ForgotPassword/forgotpassword.dart';
import 'package:kapitan_bomba_go/login_stuff/Screens/Login/components/background_screen_login.dart';
import 'package:kapitan_bomba_go/login_stuff/Screens/SignUp/signup.dart';

class BodyLoginScreen extends StatelessWidget {
  const BodyLoginScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            login_title_text,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          // SizedBox(height: size.height * 0.03,),
          SvgPicture.asset(
            "assets/icon/login.svg",
            height: size.height * 0.2,
            width: size.width * 0.2,
          ),
          RoundeddInputField(hintText: login_login_text, onChanged: (value) {}),
          RoundedPasswordField(text: login_password_text,onChanged: (value) {},),
          RoundedButton(text: login_button, press: () {}, color: kPrimaryColor,),
          AlreadyHaveAnAccountCheck(press: () {
            Navigator.push(
              context, MaterialPageRoute(
              builder: (context) {
                return SignUpScreen();},),);
          },
          ),
          SizedBox(height: size.height * 0.02,),
          ForgotPassword(press: () {
            Navigator.push(
              context, MaterialPageRoute(
              builder: (context) {
              return ForgotScreen();
            },),);

          }),
        ],
      ),
    );
  }
}

