import 'package:flutter/material.dart';
import 'package:kapitan_bomba_go/constants/constants.dart';
import 'package:kapitan_bomba_go/view/information.dart';

class AppBarForAll extends StatelessWidget {
  const AppBarForAll({Key key}) : super(key: key);

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
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return InfoKapitanBomba();
                },
              ),
            );
          },
        )
      ],
    );
  }
}
