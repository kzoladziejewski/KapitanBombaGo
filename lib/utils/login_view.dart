import 'package:flutter/material.dart';


class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  String _login;
  String _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Kapitan Bomba: Go"),
        centerTitle: true,
      backgroundColor: Colors.green.shade400,),
    backgroundColor: Colors.blueGrey,
      body: Builder(
        builder: (BuildContext context) =>
         Container(
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
                      border: Border.all(color: Colors.blueGrey.shade400, style: BorderStyle.solid)
                    ),
                    child: TextField(
                      keyboardType: TextInputType.name,
                      style: TextStyle(color: Colors.grey),

                      decoration: InputDecoration(
                        hintText: "Podaj swoj login twardzielu",
                        hintStyle: TextStyle(fontSize: 20)
                      ),

                      onChanged: (String value) => _checkData(value, false, context),
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
                        border: Border.all(color: Colors.blueGrey.shade400, style: BorderStyle.solid)
                    ),
                    child: TextField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(color: Colors.grey),
                      decoration: InputDecoration(
                          hintText: "Chaslo",
                        hintStyle: TextStyle(fontSize: 20),
                      ),

                      onChanged: (String value) => _checkData(value, false, context),
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left : 20.0, top: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Center(
                          child: RaisedButton(onPressed: () => _loginUser(context),

                          child: Text("Chce napierdalac!", style: TextStyle(
                              color: Colors.red.shade400,
                          fontSize: 10.0,
                          fontStyle: FontStyle.italic)

                          ),
                          ),
                      ),
                      Center(
                          child: RaisedButton(onPressed: () => _registerUser(context),
                            child: Text("Chce dołączyć by napierdalać!", style: TextStyle(
                                color: Colors.red.shade400,
                                fontSize: 10.0,
                                fontStyle: FontStyle.italic)

                            ),
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


  _showSnackBarWithSthBad(BuildContext context, String checkeddate)
  {
    String _checkedDate = checkeddate;
    final snackbar = SnackBar(
      content: Text(
        "Kurwinoxie cos zjebałeś z ${_checkedDate}", style: TextStyle(
          color: Colors.red.shade100),),
      duration: Duration(milliseconds: 20),
    );
    Scaffold.of(context).showSnackBar(snackbar);
  }

  _checkData(String value, bool isLoginValue, BuildContext context)
  {
    String _checkedDate = "loginem";
    if  (!isLoginValue){
    _checkedDate = "haslem";
    }

    if ((value.isEmpty) |  (value.length < 1))
    {
      _showSnackBarWithSthBad(context, _checkedDate);
    }

    setState(() {
      if (isLoginValue)
      {
        _login = value;
      }
      else {
        _password = value;

      }
    });


  }

  _validateDate()
  {
    if (_login.isNotEmpty & _password.isNotEmpty)
{    return true;}
    else
      {
        return false;
      }
  }
  _loginUser(BuildContext context) {
    if (_validateDate == true){
      setState(() {
        //tutaj bedzie logowanie
      });
    }
    _showSnackBarWithSthBad(context, "logowaniem ogolnie");

  }

  _registerUser(BuildContext context) {}
}
