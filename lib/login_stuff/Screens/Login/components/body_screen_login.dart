import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          Container(
            padding: EdgeInsets.zero,
            // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          )
        ],
      ),
    );
  }
}
