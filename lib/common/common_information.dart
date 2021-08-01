import 'package:flutter/material.dart';
import 'package:kapitan_bomba_go/view/information.dart';

getInfoButton(context) {
return IconButton(icon: Icon(Icons.info), onPressed: () => informationButton(context));
}

informationButton(context)
{
    // Navigator.push(context, MaterialPageRoute(builder: (context) => Information()),
    // setState(());
    Navigator.pushNamed(context, '/information');
  // Navigator.pushReplacementNamed(context, '/information');
  //  Navigator.of(context).pushNamed("/information");
  //   Navigator.pop(context);
  // );
}