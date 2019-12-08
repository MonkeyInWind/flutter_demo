import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen()
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('screen1')
      ),
      body: Center(
        child: Text(
          '我是一段文本',
          style: TextStyle(
            color: Color.fromARGB(0xFF, 0xFF, 0x11, 0xF5)
          )
        )
      )
    );
  }
}