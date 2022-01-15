import 'package:flutter/material.dart';
import 'package:kapitan_bomba_go/GameStuff/Maps/component/background_component.dart';

class BodyMap extends StatelessWidget {
  const BodyMap({Key key}) : super(key:key);

@override
Widget build(BuildContext context)
{
  Size size = MediaQuery.of(context).size;
  return BackgroundMaps(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

        ],
  ),);
}
}