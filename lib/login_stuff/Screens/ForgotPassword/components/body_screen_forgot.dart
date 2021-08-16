import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kapitan_bomba_go/components/rounded_button.dart';
import 'package:kapitan_bomba_go/components/rounded_input_field.dart';
import 'package:kapitan_bomba_go/constants/constants.dart';
import 'package:kapitan_bomba_go/login_stuff/Screens/ForgotPassword/components/background_screen_forgot.dart';
import 'package:kapitan_bomba_go/utils/login_verification.dart';

class BodyForgotScreen extends StatelessWidget {
  const BodyForgotScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String recovery_email = null;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            forgot_password_title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            "assets/icon/login.svg",
            height: size.height * 0.2,
            width: size.width * 0.2,
          ),
          RoundeddInputField(
              hintText: forgot_password_text,
              onChanged: (value) {
                recovery_email = value;
              }),
          RoundedButton(
            text: forgot_password_button,
            press: () {
              VerificationEmail ve = VerificationEmail(recovery_email);
              if (ve.verificate_email()) {
                debugPrint("??");
              } else {
                final scaffold = ScaffoldMessenger.of(context);
                scaffold.showSnackBar(
                  SnackBar(
                    content: Text(wrong_email),
                    action: SnackBarAction(
                      label: 'UNDO',
                      onPressed: scaffold.hideCurrentSnackBar,
                    ),
                  ),
                );
              }
            },
            color: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
