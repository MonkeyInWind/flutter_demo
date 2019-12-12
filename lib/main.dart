import 'package:flutter/material.dart';
import 'package:flutter_demo/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool logged = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Login')
      ),
      body: Center (
        child: logged ? Image.asset('./images/logo.png')
            :
          RaisedButton(
            child: Text('Login'),
            color: Colors.blue,
            onPressed: () async {
              var result = await Navigator.push(
                context,
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (context) => Login()
                )
              );

              setState(() {
                logged = result;
              });
            }
          )
      )
    );
  }
}
