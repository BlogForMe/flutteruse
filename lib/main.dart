import 'package:flutter/material.dart';
import 'package:flutteruse/dev/textfieldinput.dart';
import 'package:flutteruse/poup/textPoup.dart';
import 'package:flutteruse/widget/MineRequest.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/root_widget.dart';

import 'dev/Tutorial.dart';
import 'dev/platformspecific/PlateformChannel.dart';
import 'dev/understadingconstraints.dart';
import 'dialog/CuperDialog1.dart';
import 'dialog/showdialog.dart';
import 'flutterchina/page/HomeScreen.dart';
import 'geek/g5/TestStatefulWidget.dart';
import 'globle/globlekey.dart';

void main() => runApp(GetMaterialApp(
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
                      MaterialPageRoute(builder: (context) => new TextFieldInput()));
                  // Get.toNamed(page:TextFieldInput());
                }),
            RaisedButton(
                child: Text('Flutter Android交互'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => new PlatformChannel()));
                }),
            RaisedButton(
                child: Text('https://book.flutterchina.club/'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new PageRouterScreen()));
                }),
            RaisedButton(
                child: Text('SCROLL VIEW'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => new GlobleKeyHomePage()));
                }),
            RaisedButton(
                child: Text('显示文字'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => new DialogShow()));
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
