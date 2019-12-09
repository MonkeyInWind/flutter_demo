import 'package:flutter/material.dart';
import 'package:flutter_demo/page3.dart';

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
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('pressed next page');
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => Page3()),
            );
          },
          child: new Icon(Icons.arrow_forward),
        )
    );
  }
}