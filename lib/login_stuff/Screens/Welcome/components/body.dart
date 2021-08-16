import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kapitan_bomba_go/constants/constants.dart';
import 'package:kapitan_bomba_go/login_stuff/Screens/Login/login_screen.dart';
import 'package:kapitan_bomba_go/login_stuff/Screens/SignUp/signup.dart';
import 'package:kapitan_bomba_go/login_stuff/Screens/Welcome/components/background.dart';
import 'package:kapitan_bomba_go/components//rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(child:SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title_main_view,
              style:  TextStyle(fontWeight: FontWeight.bold),
          ),
            SizedBox(height: size.height * 0.02,),
            SvgPicture.asset("assets/icon/chat.svg", height: size.height * 0.3,
            ),
            SizedBox(height: size.height * 0.02,),

            RoundedButton(text: login_button_text,
              press: (){
              Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context){
                    return LoginScreen();},
                    ),
              );
              },
              color: Colors.white ),
            RoundedButton(
                text: register_button_text,
                press: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignUpScreen();
                  },),);
                },
                color: kPrimaryLightColor  ),
          ],
        ),
    ),
      );
  }
}


