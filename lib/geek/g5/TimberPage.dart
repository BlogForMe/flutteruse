import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart'; // 需要在pubspec.yaml增加该模块

class TimberPage extends StatefulWidget {
  final String prefix = '当前时间';

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<TimberPage> {
  String currentTimeStr;

  @override
  void initState() {
    super.initState();
    this.currentTimeStr = getCurrentTime();
    refreshTimeStr();
  }

  /// 更新当前时间字符串 [currentTimeStr]
  ///
  /// 每 500ms 更新一次，使用 Timer
  void refreshTimeStr() {
    const period = Duration(milliseconds: 500);
    // 定时更新当前时间的 currentTimeStr 字符串
    Timer.periodic(period, (timer) {
      setState(() {
        this.currentTimeStr = getCurrentTime();
      });
    });
  }

  /// 获取当前时间戳
  ///
  /// 返回一个字符串类型的前缀信息：时间戳
  String getCurrentTime() {
    DateTime now = DateTime.now();
    var formatter = DateFormat('yy-MM-dd hh:mm:ss');
    return formatter.format(now);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(widget.prefix), Text(this.currentTimeStr)],
    );
  }
}
