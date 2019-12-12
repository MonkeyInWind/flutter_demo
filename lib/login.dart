import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container (
            padding: EdgeInsets.only(
              top:50,
              left: 20,
              right: 20
            ),
            child: TextField (
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: ('username')
              ),
            )
          ),
          Container (
            padding: EdgeInsets.all(20),
            child: TextField (
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: ('password')
              ),
              obscureText: true
            )
          ),
          Row (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container (
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10
                ),
                child: RaisedButton(
                  child: Text('Login'),
                  color: Colors.blue,
                  onPressed: () {

                  }
                )
              ),
              Container (
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10
                ),
                child: RaisedButton(
                  child: Text('Cancel'),
                  onPressed: () {
                    Navigator.pop(context);
                  }
                )
              )
            ]
          )
        ],

      )
    );
  }
}