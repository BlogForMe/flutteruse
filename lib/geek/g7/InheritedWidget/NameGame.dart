import 'dart:math';

import 'package:flutter/cupertino.dart';

import 'NameInheritedWidget.dart';
import 'RandomName.dart';
import 'TestOther.dart';
import 'Welcome.dart';

class NameGame extends StatefulWidget{

  const NameGame({Key key}):super(key: key);

  @override
  State<StatefulWidget> createState() {
    return NameGameState();
  }
}

class NameGameState extends State<NameGame> {
  /// name 状态
  String name;
  /// 构造函数参数，避免父组件状态变化，而引起的子组件的重 build 操作
  Widget child;

  void changeName(){
    List<String> nameList = ['flutter one', 'flutter two', 'flutter three'];
    int pos  = Random().nextInt(3);
    setState(() {
      name = nameList[pos];
    });
  }

  @override
  void initState() {
    setState(() {
      name = 'test flutter';
    });
    super.initState();
  }


  NameGameState() {
    child = Column(children: <Widget>[
      Welcome(),
      RandomName(),
      TestOther(),
    ]);
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [NameInheritedWidget(child: child,onNameChange: changeName,name: name,)],
    );
  }
}