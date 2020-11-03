import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteruse/widget/preference.dart';

/**
 *
 */
class CuperDialog2 extends StatefulWidget {
  final int idIndex;
  final ValueChanged<int> onChanged;

  CuperDialog2({Key key, this.idIndex, this.onChanged});

  @override
  State<StatefulWidget> createState() {
    return _CuperDialog();
  }
}

class _CuperDialog extends State<CuperDialog2> {
  int idIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: CupertinoTheme(
            data: CupertinoThemeData(
              textTheme: CupertinoTextThemeData(
                dateTimePickerTextStyle: TextStyle(color: Colors.blue),
              ),
            ),
            child: CupertinoPicker(
              onSelectedItemChanged: (int value) {
                widget.onChanged(value);
                setState(() {
                  idIndex = value;
                });
              },
              itemExtent: 30,
              children: getChildren(idIndex),
            )));
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
