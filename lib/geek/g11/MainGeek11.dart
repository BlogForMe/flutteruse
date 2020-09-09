
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'entrance_bottom_bar.dart';

class Geek11 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Two You',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue, // APP 主题
      ),
      home: Entrance(),
    );
  }

}