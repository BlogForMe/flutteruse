import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteruse/widget/preference.dart';

class CuperDialog1 extends StatefulWidget {

  final int idIndex;
  final ValueChanged<int> onChanged;

  CuperDialog1(Key key,this.idIndex, this.onChanged);

  @override
  State<StatefulWidget> createState() {
    return _CuperDialog();
  }
}

class _CuperDialog extends State<CuperDialog1> {
  int idIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        height: 200,
        child: Column(children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                      child: Text('取消',
                          style: TextStyleUnit.pingFangRegular(
                              16, ColorUnit.color9()))),
                  GestureDetector(
                      onTap: () {
                        widget.onChanged(idIndex);
                      },
                      child: Text('确认',
                          style: TextStyleUnit.pingFangRegular(
                              16, ColorUnit.colorMain())))
                ]),
          ),
          Expanded(
            child: StatefulBuilder(
              builder: (context, _setState) {
                return CupertinoTheme(
                    data: CupertinoThemeData(
                      textTheme: CupertinoTextThemeData(
                        dateTimePickerTextStyle: TextStyle(color: Colors.blue),
                      ),
                    ),
                    child: CupertinoPicker(
                      onSelectedItemChanged: (int value) {
                        //   onChanged(value);
                        idIndex = value;
                        //   textIndex = value;
                        setState(() {});
                      },
                      itemExtent: 30,
                      children: getChildren(idIndex),
                    ));
              },
            ),
          )
        ]));
  }

  getChildren(int idx) {
    var titles = ['苹果', '香蕉', '地方', '苹果', '香蕉', '地方'];
    List<Widget> list = [];
    for (var i = 0; i < titles.length; i++) {
      list.add(Text(titles[i],
          style: TextStyleUnit.pingFangRegular(
              16, idx == i ? Color(0xFF23BDC5) : ColorUnit.color3())));
    }
    return list;
  }
}
