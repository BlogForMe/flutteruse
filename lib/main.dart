import 'dart:developer';

import 'package:flutter/material.dart';

import 'dev/Tutorial.dart';
import 'dev/understadingconstraints.dart';
import 'geek/g11/MainGeek11.dart';

void main() => runApp(MaterialApp(
      title: '页面跳转返回数据',
      home: FirstScreen(),
    ));

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('导航页面')),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
                child: Text('Introduction to widgets'),
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => new Counter()));
                }),
            RaisedButton(
                child: Text('Tutorial'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new Tutorial()));
                }),
            RaisedButton(
                child: Text('Understading constraints'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new HomePage()));
                }),
            RaisedButton(
                child: Text('如何巧妙地应用 Flutter 有/无状态组件'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new Geek11()));
                }),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Container(
          child: buildRow(),
        ),
      ),
    );
  }
}

Widget buildRow() => Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Image.asset('images/pic1.jpg'),
        ),
        Expanded(
          flex: 2,
          child: Image.asset('images/pic2.jpg'),
        ),
        Expanded(
          child: Image.asset('images/pic3.jpg'),
        ),
      ],
    );

//Widget buildRow() => Column(
//      mainAxisAlignment: MainAxisAlignment.center,
//      children: <Widget>[
//        Image.asset('images/pic1.jpg'),
//        Image.asset('images/pic2.jpg'),
//        Image.asset('images/pic3.jpg'),
//      ],
//    );
