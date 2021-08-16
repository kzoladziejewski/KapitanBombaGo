import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoKapitanBomba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Kapitan Bomba Go Informacje",
            textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, color: Colors.red.shade400),
          )),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Zrobilem to na odpierdol, czego sie spodziewales?", style: TextStyle(fontSize: 10, color: Colors.red.shade400),),
            Text("Jakas tam licencja:", style: TextStyle(fontSize: 40, color: Colors.black),),
            Text("Nimiejszy program został stworzony dla ludzi będącymi fanami produkcji Kapitana Bomby od "
                "ludzi będącymi fanami produkcji Kapitan Bomby. Autorzy aplikacji nie zarabiają i nie zamierzają zarabiać pieniędzy na tej produkcji "
                "Prosilibyśmy aby spółka CDA.PL, kartony4funtv, Grubas Walaszek czy ktokolwiek inny kto ma prawa do Kapitan Bomba "
                "nie pozywała nas do sądu", style: TextStyle(fontSize: 20, color: Colors.red.shade400),),
            Text("Wszelkie uwagi, oferty pomocy, zgłoszenia bugów proszę kierować na:",style: TextStyle(fontSize: 20, color: Colors.red.shade400),),
            Text("email: kzoladziejewski@gmail.com", style: TextStyle(fontSize: 20, color: Colors.blue.shade400),),
            Text("albo grupę na facebooku", style: TextStyle(fontSize: 20, color: Colors.red.shade400),),
            IconButton(icon: Icon(Icons.accessible_sharp), onPressed: _launchURL)
          ],
        ),
      ),
    )
    );

  }
  _launchURL() async {

    String fbProtocolurl;
    if (Platform.isIOS)
      {
        fbProtocolurl = 'fb://profile/page_id';
      }
    else {
      fbProtocolurl = 'fb://page/page_id';
    }
    String url = 'https://www.facebook.com/groups/1207065892986050';

    try {
      bool launched = await launch(fbProtocolurl, forceSafariVC: false);
      if (!launched)
        {
          await launch(url, forceSafariVC: false);
        }
    }
    catch (e)
    {
      await launch(url, forceSafariVC: false);
    }


  }

}
