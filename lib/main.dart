// import 'dart:js';
// import 'dart:js';
import 'package:flutter/material.dart';
import 'package:kapitan_bomba_go/constants/constants.dart';
import 'package:kapitan_bomba_go/login_stuff/Screens/Welcome/welcome_screen.dart';
import 'package:kapitan_bomba_go/view/information.dart';
//
// void main() => runApp(new MaterialApp(home: LoginView()
//     home: WelocmeScreen()
//     ));

// void main() => runApp(new MaterialApp(
//     title: "Kapitan Bomba: GO",
// home : LoginView(),
// initialRoute: '/',
// routes: {
//
//         // '/' : (BuildContext context) => LoginView(),
//         '/profile': (context) => Profile(),
//         '/information': (context) => Information(),
// },
// )
// );
//


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kapitan Bomba Go',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}
