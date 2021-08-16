import 'package:flutter/material.dart';
import 'package:kapitan_bomba_go/components/app_bar_for_all.dart';
import 'package:kapitan_bomba_go/login_stuff/Screens/SignUp/components/body_screen_signup.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(30),
        child: AppBarForAll(),
      ),
      body: BodySignUpScreen(),);
  }
}

