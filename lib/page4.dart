import 'package:flutter/material.dart';
import 'package:flutter_demo/page5.dart';

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page4')
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Title1')
          ),
          ListTile(
              leading: Icon(Icons.cached),
              title: Text('Title2')
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  color: Colors.red,
                  width: 150,
                ),
                Container(
                  color: Colors.blue,
                  width: 150,
                ),
                Container(
                  color: Colors.green,
                  width: 150,
                ),
                Container(
                  color: Colors.yellow,
                  width: 150,
                ),
              ]
            )
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black)
            ),
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(100, (index) {
                return Center(
                  child: Text('Item $index')
                );
              })
            )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.fast_forward),
        onPressed: () {
          Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) => Page5()),
          );
        }
      ),
    );
  }
}