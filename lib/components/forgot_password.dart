import 'package:flutter/material.dart';
import 'package:kapitan_bomba_go/constants/constants.dart';

class ForgotPassword extends StatelessWidget {
  final Function press;
  const ForgotPassword({
    Key key, this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: press,
          child: Text(
           login_forget_password ,
            style: TextStyle(color: Colors.red),

          ),
        ),
      ],
    );
  }
}
