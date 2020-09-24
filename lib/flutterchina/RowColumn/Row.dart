import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClubRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("layoutsInFlutter.dart"),
      ),
      body: _ColumnBook(),
    );
  }
}

Widget _ColumnBook() {
  return Container(
    child: Column(
      //测试Row对齐方式，排除Column默认居中对齐的干扰
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(" hello world "),
            Text(" I am Jack "),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(" hello world "),
            Text(" I am Jack "),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          textDirection: TextDirection.rtl,
          children: <Widget>[
            Text(" hello world "),
            Text(" I am Jack "),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          verticalDirection: VerticalDirection.up,
          children: <Widget>[
            Text(
              " hello world ",
              style: TextStyle(fontSize: 30.0),
            ),
            Text(" I am Jack "),
          ],
        ),
      ],
    ),
  );
}
