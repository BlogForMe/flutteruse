import 'package:flutter/material.dart';
import 'package:flutteruse/widget/preference.dart';
import 'package:flutteruse/widget/tool.dart';

class CasScaffold {
  static scaffold({title, body, actions, color,resizeBottom}){
    return Scaffold(
      appBar: CusAppBar.cusAppBar(title ?? '', actions: actions??<Widget>[]),
      backgroundColor: color??ColorUnit.colorBg(),
      body: body,
      resizeToAvoidBottomInset: resizeBottom,
    );
  }
}

class CusAppBar {
  static PreferredSizeWidget cusAppBar(String title, {List<Widget> actions}){
    return PreferredSize(
      child: AppBar(
            title: Text(title, style: TextStyleUnit.pingFangRegular(20, Color(0xFF030303)),),
            actions: actions??<Widget>[],
            elevation: 0,
          ), 
      preferredSize: Size.fromHeight(44),
    );
  }
}

class CasAppBar extends StatefulWidget implements PreferredSizeWidget {

  final String title;
  final List<Widget> rightBarItmes;

  CasAppBar({Key key, this.title, this.rightBarItmes}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CasAppBarState();
  }

  @override
  Size get preferredSize => Size.fromHeight(108);  
}

class _CasAppBarState extends State<CasAppBar> {
  List<Widget> getItems(){
    List<Widget> widgets = [];
    Widget btn = RaisedButton(
            onPressed: (){
              Tool.log('object');
            },
            // child: Image.asset('images/login_logo.png'),
            child: null,
    );
    widgets.add(btn);
    widgets.add(Text(widget.title, style: TextStyleUnit.pingFangRegular(20, Colors.white),));
    if (widget.rightBarItmes.length > 0) {
      widgets.addAll(widget.rightBarItmes);
    }else{
      widgets.add(Text(''));
    }
    return widgets;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUnit.colorMain(),
      child: Container(
        padding: EdgeInsets.only(top: 20),
        height: 44,
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: getItems(),
      ),
      ),
    );
  }
}

