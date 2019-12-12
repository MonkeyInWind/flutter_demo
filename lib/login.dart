import 'package:flutter/material.dart';
import 'dart:async';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login> {
  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder (builder: (BuildContext context) {
        return Column(
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
                onChanged: (value) {
                  setState(() {
                    username = value;
                  });
                },
              )
            ),
            Container (
              padding: EdgeInsets.all(20),
              child: TextField (
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: ('password')
                ),
                obscureText: true,
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                }
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
                      String tip = '';
                      if (username == '') {
                        tip = 'username empty';
                      } else if (password == '') {
                        tip = 'password empty';
                      } else {
                        setState(() {
                          username = '';
                          password = '';
                        });
                        Timer(
                          Duration(seconds: 1),
                          () {
                            Navigator.pop(context, true);
                          }
                        );
                        tip = 'success';
                      }
                      Scaffold.of(context).showSnackBar(
                        SnackBar(
                          content: Text(tip),
                          duration: Duration(seconds: 1),
                        )
                      );
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
                      setState(() {
                        username = '';
                        password = '';
                      });
                      Navigator.pop(context, false);
                    }
                  )
                )
              ]
            )
          ],
        );
      })
    );
  }
}

