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
            _FlatButton(true, title: '验证码', tapPress: () {}),
            _FlatButton(false, title: '验证码'),
            SizedBox(
              height: 20,
            ),
            _FlButton(),
            _InputTest()
          ],
        ),
      ),
    );
  }

  Widget _FlatButton(enable, {title, tapPress}) {
    return FlatButton(
      color: enable ? Colors.blue : Colors.greenAccent,
      highlightColor: Colors.blue[700],
      colorBrightness: Brightness.dark,
      splashColor: Colors.grey,
      disabledColor: Colors.grey,
      child: Text(
        title,
        style: TextStyle(color: enable ? Colors.white : Colors.lightBlueAccent),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
      onPressed: tapPress,
    );
  }

  Widget _FlButton() {
    return FlatButton(
      color: Colors.blue,
      highlightColor: Colors.blue[700],
      colorBrightness: Brightness.dark,
      splashColor: Colors.grey,
      child: Text("Submit"),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
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

  Widget _InputTest() {
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.person),
        hintText: 'What do people call you?',
        labelText: 'Name *',
        suffixText: '你好'
      ),
      onSaved: (String value) {
        // This optional block of code can be used to run
        // code when the user saves the form.
      },
      validator: (String value) {
        return value.contains('@') ? 'Do not use the @ char.' : null;
      },
    );
  }
}
