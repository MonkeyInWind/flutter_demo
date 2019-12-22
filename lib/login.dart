import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login> {
  Dio dio = new Dio();
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
                    onPressed: () async {
                      String tip = '';
                      if (username == '') {
                        tip = 'username empty';
                      } else if (password == '') {
                        tip = 'password empty';
                      } else {
                        try {
                          Response res = await dio.post(
                              'http://118.25.7.84:10086/login',
                              data: {
                                'username': username,
                                'password': password
                              }
                          );
                          print(res.data);
                          tip = res.data;
                        } catch (e) {
                          print(e);
                          tip = 'failed';
                        }
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

