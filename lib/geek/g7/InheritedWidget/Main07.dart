import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'NameGame.dart';

class Geek07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Two You', // APP 名字
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue, // APP 主题
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Two You'), // 页面名字
            ),
            body: Center(
              child: NameGame(),
            )));
  }
}
