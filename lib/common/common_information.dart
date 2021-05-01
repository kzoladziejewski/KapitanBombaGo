
import 'package:flutter/material.dart';
import 'package:kapitan_bomba_go/view/information.dart';

getInfoButton(context) {
return IconButton(icon: Icon(Icons.info), onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Information()),);});
}