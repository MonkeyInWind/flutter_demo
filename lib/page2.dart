import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page2')
      ),
      body: Center(
        child: MaterialButton(
          child: Text('back'),
          color: Colors.blue,
          onPressed: () {
            print('back');
            Navigator.pop(context);
          }
        )
      )
    );
  }
}