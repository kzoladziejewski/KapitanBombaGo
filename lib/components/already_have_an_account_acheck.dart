import 'package:flutter/material.dart';
import 'package:kapitan_bomba_go/constants/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key, this.login = true, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: press,
          child: Text(
            login ? login_create_new_account : login_create_new_account ,
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
