import 'package:flutter/material.dart';
import 'package:kapitan_bomba_go/GameStuff/Maps/component/body_map.dart';
import 'package:kapitan_bomba_go/components/app_bar_for_all.dart';
class GameMap extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(30),
        child: AppBarForAll(),
      ),
      body: BodyMap(

      ),
    );
  }
}