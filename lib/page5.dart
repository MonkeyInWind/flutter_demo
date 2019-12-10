import 'package:flutter/material.dart';

class Page5 extends StatelessWidget{
  final items = new List<String>.generate(5, (i) => 'Item ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page5'),
      ),
      body: ListView(
        children: <Widget> [
          InkWell(
            child: Center(
              child: Container(
                child: Text('this is a button'),
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 10
                )
              )
            ),
            onTap: () {
              print('on tap');
            },
            onTapDown: (tapDownDetail) {
              print('on tap down');
            },
            onTapCancel: () {
              print('on tap cancel');
            },
            onDoubleTap: () {
              print('on dubble tap');
            },
            onLongPress: () {
              print('on long press');
            }
          ),
          Container(
            height: 400,
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Dismissible(
                  key: Key('key_$index'),
                  onDismissed: (direction) {
                    items.removeAt(index);
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content: Text('$item dismissed')
                      )
                    );
                  },
                  background: Container(
                    color: Colors.red
                  ),
                  child: ListTile(
                    title: Text('$item')
                  )
                );
              }
            )
          )
        ]
      )
    );
  }
}