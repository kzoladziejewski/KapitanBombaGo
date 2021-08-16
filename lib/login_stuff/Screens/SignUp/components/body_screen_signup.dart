import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kapitan_bomba_go/components/rounded_button.dart';
import 'package:kapitan_bomba_go/components/rounded_input_field.dart';
import 'package:kapitan_bomba_go/components/rounded_password_field.dart';
import 'package:kapitan_bomba_go/constants/constants.dart';
import 'package:kapitan_bomba_go/utils/login_verification.dart';
import 'background_screen_signup.dart';

class BodySignUpScreen extends StatelessWidget {
  const BodySignUpScreen(
      {Key key
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String email = null;
    Random random = new Random();
    int randomNumber = random.nextInt(100);
    return Background(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(register_title_text,
        style: TextStyle(fontWeight: FontWeight.bold)
        ),
        SvgPicture.asset("assets/icon/signup.svg",
        height: size.height * 0.2,
          width: size.width * 0.2,
        ),
        RoundeddInputField(hintText: register_login_name, onChanged: (value) {}),
        RoundeddInputField(hintText: register_email_name, onChanged: (value) {
          email = value;

        }),
        RoundedPasswordField(text: register_password, onChanged: (value) {
        },),
        RoundedButton(text: (randomNumber%2==0)?register_button : register_button_2,
            press: () {
              VerificationEmail ve = VerificationEmail(email);
              if(ve.verificate_email()) {
                debugPrint("??");
              }
              else {
                final scaffold = ScaffoldMessenger.of(context);
                scaffold.showSnackBar(
                  SnackBar(
                    content: Text(wrong_email),
                    action: SnackBarAction(
                      label: 'UNDO',
                      onPressed: scaffold.hideCurrentSnackBar,
                    ),),);
              }
            }, color: kPrimaryColor),
      ],
    ));
  }
}
