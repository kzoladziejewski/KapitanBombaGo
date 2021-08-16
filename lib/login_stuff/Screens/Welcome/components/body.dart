import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kapitan_bomba_go/constants/constants.dart';
import 'package:kapitan_bomba_go/login_stuff/Screens/Login/login_screen.dart';
import 'package:kapitan_bomba_go/login_stuff/Screens/Welcome/components/background.dart';
import 'package:kapitan_bomba_go/utils/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(child:SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Kapitan Bomba Go",
              style:  TextStyle(fontWeight: FontWeight.bold),
          ),
            SizedBox(height: size.height * 0.03,),
            SvgPicture.asset("assets/icon/chat.svg", height: size.height * 0.3,
            ),
            SizedBox(height: size.height * 0.05,),

            RoundedButton(text: "Jestem żołnierzem Gwiezdnej Floty tempy chuju!",
              press: (){
              Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context){
                    return LoginScreen();},
                    ),
              );
              },
              color: Colors.white ),
            RoundedButton(text: "Chce dołączyć by móc napierdalać!!",
                press: (){},
                color: kPrimaryLightColor  ),
          ],
        ),
    ),
      );
  }
}


