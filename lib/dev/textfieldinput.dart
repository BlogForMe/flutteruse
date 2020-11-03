import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mixed Lis'),
      ),
      body: Column(
        children: [
          TextField(
            // obscureText: true,
            decoration: InputDecoration(
              isCollapsed: true,
              // isDense: true,
              // border: OutlineInputBorder(),
              labelText: '密码',
            ),
          )
        ],
      ),
    );
  }
}
