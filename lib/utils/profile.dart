
import 'package:flutter/material.dart';
import 'package:kapitan_bomba_go/common/common_information.dart';
import 'package:kapitan_bomba_go/utils/login_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatelessWidget {

  String _login = '';
  String _authtoken = '';
   int _level = 1;
   int _experience = 0 ;
   DecorationImage _avatar = DecorationImage(image: NetworkImage("https://picsum.photos/500/500"), fit: BoxFit.cover);

  @override
  Widget build(BuildContext context) {
    getAuthTokenFromSharedPrefences();
    _getDataFromServer();
    return Scaffold(
      appBar: AppBar(
        title: Text("Witaj twardzielu: $_login"),
        actions: <Widget>[
          getInfoButton(context),
          IconButton(icon: Icon(Icons.logout), onPressed: () =>_logout_2(context))
        ],
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[_getAvatar(), getData()],
        ),
      )
    );
  }

  getAuthTokenFromSharedPrefences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _authtoken = prefs.getString("authtoken");
    _login = prefs.getString("login");
  }
  
  _logout_2(context)
  {
    _logout();
    tryLogout(context);
  }
  
  _logout() async
  {
    SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.clear();
  debugPrint("?????????????");
  }

  tryLogout(context)
  {
    debugPrint("try logout");
    Navigator.pop(context);
    Navigator.of(context).pushNamed("/information");
  }

  _getDataFromServer()
  {
    if (_authtoken != null && _authtoken.isNotEmpty)
      {
        _level = 1 ;
        _experience = 0;
      }
    //tutaj bedzie pobieranie danych z serwera takich jak poziom, doswiadczenie, avatar,
  }

  _getAvatar(){
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        image: _avatar)
      );

  }

  getData()
  {
    return Container(
      height: 250,
      margin: EdgeInsets.only(top: 300 ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Tempy chuj o imieniu: $_login", style: TextStyle(fontSize: 20, color: Colors.red),),
          Text("Tempy chuj na poziomie: $_level", style: TextStyle(fontSize: 20, color: Colors.red),),
          Text("Doświadczenie tempego chuja:", style: TextStyle(fontSize: 20, color: Colors.red),),
          Text("$_experience / ${calcTotalExp()}", style: TextStyle(fontSize: 20, color: Colors.red),),

        ],
      ),
    );
  }

  calcTotalExp()
  {
    return _level * 10 * 2137 * 0.5 ;
  }

}
