import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('page3')
        ),
        body: Stack(
          children: <Widget>[
            Center(
              child: CircularProgressIndicator()
            ),
            Center(
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: 'https://www.baidu.com/img/bd_logo1.png'
              )
            ),
          ],
        ),
    );
  }
}