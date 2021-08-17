import 'package:flutter/material.dart';
import 'package:kapitan_bomba_go/constants/constants.dart';
import 'package:kapitan_bomba_go/login_stuff/Screens/Welcome/welcome_screen.dart';
import 'package:kapitan_bomba_go/view/information.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppBarForLogout extends StatelessWidget {
  const AppBarForLogout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title_main_view,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15, color: Colors.white),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.info, color: Colors.white),
          onPressed: () {
            _logout(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return InfoKapitanBomba();
                },
              ),
            );
          },
        ),
        IconButton(
          icon: Icon(Icons.logout, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return WelcomeScreen();
                },
              ),
            );
          },
        ),

      ],
    );
  }

  _logout(context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.clear();
  }
}
