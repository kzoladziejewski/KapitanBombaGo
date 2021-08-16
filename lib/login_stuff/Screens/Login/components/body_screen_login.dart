import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kapitan_bomba_go/components/already_have_an_account_acheck.dart';
import 'package:kapitan_bomba_go/components/forgot_password.dart';
import 'package:kapitan_bomba_go/components/rounded_button.dart';
import 'package:kapitan_bomba_go/components/rounded_input_field.dart';
import 'package:kapitan_bomba_go/components/rounded_password_field.dart';
import 'package:kapitan_bomba_go/components/text_field_container.dart';
import 'package:kapitan_bomba_go/constants/constants.dart';
import 'package:kapitan_bomba_go/login_stuff/Screens/Login/components/background_screen_login.dart';

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
            "Podaj swój login twardzielu",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            "assets/icon/login.svg",
            height: size.height * 0.3,
            width: size.width * 0.3,
          ),
          RoundeddInputField(hintText: login_login_text, onChanged: (value) {}),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: login_button,
            press: () {},
            color: kPrimaryColor,
          ),
          AlreadyHaveAnAccountCheck(press: () {}),

          ForgotPassword(press: () {}),
        ],
      ),
    );
  }
}

