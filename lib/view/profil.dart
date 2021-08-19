import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kapitan_bomba_go/common/common_information.dart';
import 'package:kapitan_bomba_go/components/app_bar_for_all.dart';
import 'package:kapitan_bomba_go/components/app_bar_with_logout.dart';
import 'package:kapitan_bomba_go/constants/constant_date.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../main.dart';

class ProfileInfo extends StatefulWidget {
  String login = '';
  String authtoken = '';
  int level = 1;
  int experience = 0;

  DecorationImage avatar = DecorationImage(
      image: NetworkImage("https://picsum.photos/500/500"), fit: BoxFit.cover);

  // ProfileInfo({Key key, this.login, this.authtoken, this.level, this.experience})
  ProfileInfo({Key key}) : super(key: key);

  @override
  _ProfileInfoState createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  Future<Null> getAuthTokenFromSharedPrefences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      widget.authtoken = prefs.getString("_auth");
      widget.login = prefs.getString("_login");
      getDataFromServer();
    });
  }

  @override
  void initState() {
    super.initState();
    getAuthTokenFromSharedPrefences();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(30),
          child: AppBarForLogout(),
        ),
        body: Container(
          alignment: Alignment.topCenter,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[getAvatar(), getData()],
          ),
        ));
  }

  void getDataFromServer() async {
    debugPrint(widget.authtoken);
    var authtoken = widget.authtoken.replaceAll('"', '');
    Map<String, String> header = {
      HttpHeaders.contentTypeHeader : 'application/json',
      HttpHeaders.authorizationHeader: 'JWT $authtoken'};
    debugPrint(header.toString());
    String get_user_data_link = page_address + player + "/" + "Jocelyn Wheeler";
    var url = Uri.parse(get_user_data_link);
    var response = await http.get(url, headers: header);
    debugPrint(response.body);

    debugPrint(response.toString());
  }

  getAvatar() {
    return Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            image: widget.avatar));
  }

  getData() {
    String login = widget.login;
    int level = widget.level;
    int experience = widget.experience;
    return Container(
      height: 250,
      margin: EdgeInsets.only(top: 300),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Tempy chuj o imieniu: $login",
            style: TextStyle(fontSize: 20, color: Colors.red),
          ),
          Text(
            "Tempy chuj na poziomie: $level",
            style: TextStyle(fontSize: 20, color: Colors.red),
          ),
          Text(
            "Doświadczenie tempego chuja:",
            style: TextStyle(fontSize: 20, color: Colors.red),
          ),
          Text(
            "$experience / ${calcTotalExp()}",
            style: TextStyle(fontSize: 20, color: Colors.red),
          ),
        ],
      ),
    );
  }

  calcTotalExp() {
    return widget.level * 10 * 2137 * 0.5;
  }
}

//
//   _getDataFromServer() {
//     if (_authtoken != null && _authtoken.isNotEmpty) {
//       _level = 1;
//       _experience = 0;
//     }
//     //tutaj bedzie pobieranie danych z serwera takich jak poziom, doswiadczenie, avatar,
//   }
//
//
//

// }
