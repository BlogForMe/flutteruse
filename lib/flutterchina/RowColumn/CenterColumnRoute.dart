import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClubColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Column "),
      ),
      body: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("hi"),
              Text("world"
              ,style: TextStyle(fontSize: 40),),
            ]),
      ),
    );
  }
}
