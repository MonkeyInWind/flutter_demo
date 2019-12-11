import 'package:flutter/material.dart';

class Page6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page6'),
      ),
      body: BoxChangeColor()
    );
  }
}

class BoxChangeColor extends StatefulWidget {
  @override
  _BoxChangeColorState createState() => new _BoxChangeColorState();
}

class _BoxChangeColorState extends State<BoxChangeColor> {
  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 200,
          height: 200,
          color: color,
          margin: EdgeInsets.only(
            top: 20,
            bottom: 20
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
                  setState(() {
                    color = Colors.red;
                  });
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
                  setState(() {
                    color = Colors.blue;
                  });
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
                  setState(() {
                    color = Colors.green;
                  });
                }
              )
            )
          ],
        )
      ],
    );
  }
}