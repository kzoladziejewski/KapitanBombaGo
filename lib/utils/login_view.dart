import 'package:flutter/material.dart';
import 'package:kapitan_bomba_go/common/common_information.dart';
import 'package:kapitan_bomba_go/constants/constant_date.dart';
import 'package:kapitan_bomba_go/utils/profile.dart';
import 'package:kapitan_bomba_go/view/information.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  String _login;
  String _password;
  String _authtoken;
  Scaffold scam = new Scaffold();
  @override
  Widget build(BuildContext context) {
    if (_checkAuthtoken() == false) {
      debugPrint("pierwsza apka");
      return loginPage(context);
    } else {
      debugPrint("sprawdzam kolejne opcje");
      // return Profile();
    Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()),);
    }
  }

  loginPage(context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Kapitan Bomba: Go"),
        centerTitle: true,
        backgroundColor: Colors.green.shade400,
        actions: <Widget>[IconButton(
          icon: Icon(Icons.settings),
          onPressed: () => debugPrint("Settings tap"),
        ),
        getInfoButton(context)
        ],
      ),
      backgroundColor: Colors.blueGrey,
      body: Builder(
        builder: (BuildContext context) => Container(
          margin: EdgeInsets.only(top: 20.0),
          padding: EdgeInsets.all(12.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            color: Colors.blueGrey.shade400,
                            style: BorderStyle.solid)),
                    child: TextField(
                      keyboardType: TextInputType.name,
                      style: TextStyle(color: Colors.grey),
                      decoration: InputDecoration(
                          hintText: "Podaj swoj login twardzielu",
                          hintStyle: TextStyle(fontSize: 20)),
                      onChanged: (String value) =>
                          _checkData(value, true, context),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            color: Colors.blueGrey.shade400,
                            style: BorderStyle.solid)),
                    child: TextField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(color: Colors.grey),
                      decoration: InputDecoration(
                        hintText: "Chuislo",
                        hintStyle: TextStyle(fontSize: 20),
                      ),
                      onChanged: (String value) =>
                          _checkData(value, false, context),
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding:
                  const EdgeInsets.only(left: 20.0, top: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Center(
                        child: RaisedButton(
                          onPressed: () => _loginUser(context),
                          child: Text("Chce napierdalac!",
                              style: TextStyle(
                                  color: Colors.red.shade400,
                                  fontSize: 10.0,
                                  fontStyle: FontStyle.italic)),
                        ),
                      ),
                      Center(
                        child: RaisedButton(
                          onPressed: () => _registerUser(context),
                          child: Text("Chce dołączyć by napierdalać!",
                              style: TextStyle(
                                  color: Colors.red.shade400,
                                  fontSize: 10.0,
                                  fontStyle: FontStyle.italic)),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );

  }

  _checkAuthtoken() {
    getAuthTokenFromSharedPrefences();
    if (_authtoken == null || _authtoken.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  _showSnackBarWithSthBad(BuildContext context, String checkeddate) {
    String _checkedDate = checkeddate;
    final snackbar = SnackBar(
      content: Text(
        "Kurwinoxie cos zjebałeś z ${_checkedDate}",
        style: TextStyle(color: Colors.red.shade100),
      ),
      duration: Duration(milliseconds: 20),
    );
    Scaffold.of(context).showSnackBar(snackbar);
  }

  _checkData(String value, bool isLoginValue, BuildContext context) {
    String _checkedDate = "loginem";
    if (!isLoginValue) {
      _checkedDate = "haslem";
    }
    if ((value.isEmpty) | (value.length < 1)) {
      _showSnackBarWithSthBad(context, _checkedDate);
    }

    setState(() {
      debugPrint("ustawilem set state");
      if (isLoginValue) {
        _login = value;
        debugPrint(_login);
        debugPrint(value);
      } else {
        _password = value;
      }
    });
    setLoginAndPasword();
  }

  _validateDate() {
    debugPrint(_login);
    if ((_login != null || _login.isNotEmpty) &&
        (_password != null || _password.isNotEmpty)) {
      return true;
    } else {
      return false;
    }
  }

  _loginUser(BuildContext context) {
    if (_validateDate() == true) {
      setState(() {
        if (_login.toLowerCase() == "kasztan") {
          setAuthTokenFromSharedPrefences("eloszka");
          debugPrint("uzyskalem auth");
        }
        //tutaj bedzie logowanie
      });
    }
    _showSnackBarWithSthBad(context, "logowaniem ogolnie");
  }

  _registerUser(BuildContext context) {}

  getAuthTokenFromSharedPrefences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _authtoken = prefs.getString("authtoken");
    _login = prefs.getString("login");
    _password = prefs.getString("password");
  }

  setAuthTokenFromSharedPrefences(token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString("authtoken", token);


  }

  setLoginAndPasword() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("login", _login);
    prefs.setString("password", _password);
  }
}
