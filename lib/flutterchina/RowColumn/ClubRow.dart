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
    color: Colors.pinkAccent,
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      verticalDirection: VerticalDirection.down,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("1 hello world  ",style: TextStyle(fontSize: 40,backgroundColor:Colors.lightBlueAccent),),
        Text(" I am Jack ",style: TextStyle(fontSize: 10,backgroundColor:Colors.blue)),
      ],
    ),
  );
}

Widget _Expand() {
  return Container(
    color: Colors.lightBlueAccent,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(child: Text('I am JSPang')),
        Expanded(child: Center(child: Text('my website is jspang.com'))),
        Center(child: Text('I love coding'))
      ],
    ),
  );
}

class CenterColumnRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
    );
  }

}

/*

Widget _ColumnBook() {
  return Container(
    color: Colors.pinkAccent,
    child: Column(
      //测试Row对齐方式，排除Column默认居中对齐的干扰
      children: <Widget>[
        Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text("1 hello world    hello world     hello world"),
            Text(" I am Jack "),
          ],
        ),
      */
/*  Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("2 hello world "),
            Text(" I am Jack "),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text("3 hello world "),
            Text(" I am Jack "),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("4 hello world "),
            Text(" I am Jack "),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Text("5 hello world "),
            Text(" I am Jack "),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          // verticalDirection: VerticalDirection.up,
          children: <Widget>[
            Text(
              "6 hello world ",
              style: TextStyle(fontSize: 30.0),
            ),
            Text(" I am Jack "),
          ],
        ),*/ /*

      ],
    ),
  );
}
*/
