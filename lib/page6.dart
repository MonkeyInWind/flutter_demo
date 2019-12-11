import 'package:flutter/material.dart';

class Page6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page6'),
      ),
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Center (
            child: Container(
              width: 200,
              height: 200,
              color: Colors.red,
              margin: EdgeInsets.only(
                top: 20,
                bottom: 20
              ),
            ),
          ),
          Row (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container (
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10
                ),
                child: MaterialButton (
                  color: Colors.red,
                  child: Text('red'),
                  onPressed: () {
                    print('red');
                  },
                ),
              ),
              Container (
                padding: EdgeInsets.only(
                    left: 10,
                    right: 10
                ),
                child: MaterialButton (
                  color: Colors.blue,
                  child: Text('blue'),
                  onPressed: () {
                    print('blue');
                  }
                ),
              ),
              Container (
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10
                ),
                child: MaterialButton (
                  color: Colors.green,
                  child: Text('green'),
                  onPressed: () {
                    print('green');
                  }
                )
              )
            ],
          )
        ],
      )
    );
  }
}