import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "按钮",
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 30),
        child: Column(
          children: [
            _FlatButton(true),
            SizedBox(
              height: 20,
            ),
            _FlButton()
          ],
        ),
      ),
    );
  }

  Widget _FlatButton(enable) {
    return FlatButton(
      color: Colors.blue,
      highlightColor: Colors.blue[700],
      colorBrightness: Brightness.dark,
      splashColor: Colors.grey,
      child: Text("Submit"),
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      onPressed: () {},
    );
  }

  Widget _FlButton(){
    return FlatButton(
      color: Colors.blue,
      highlightColor: Colors.blue[700],
      colorBrightness: Brightness.dark,
      splashColor: Colors.grey,
      child: Text("Submit"),
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      onPressed: () {},
    );
  }

  Widget gradientBtn(enable) {
    return Container(
        width: 170,
        height: 44,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: enable
                  ? [Color(0xFF99CC67), Color(0xFF22BDC6)]
                  : [Color(0xFFD8D8D8), Color(0xFFD8D8D8)],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft),
          borderRadius: BorderRadius.all(Radius.circular(22)),
        ),
        child: Text("你好"));
  }
}
