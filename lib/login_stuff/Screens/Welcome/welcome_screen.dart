import 'package:flutter/material.dart';
import 'package:kapitan_bomba_go/components/app_bar_for_all.dart';
import 'package:kapitan_bomba_go/constants/constants.dart';
import 'package:kapitan_bomba_go/login_stuff/Screens/Welcome/components/body.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(30),
        child: AppBarForAll(),
      ),
      // appBar: AppBarForAll(),
      body: Body(),
    );
  }
}
