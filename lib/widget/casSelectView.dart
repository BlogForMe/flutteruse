import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteruse/widget/preference.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

typedef CasSelectViewCallback(idx);

class CasSelectView {
  static getChildren(int idx) {
    var titles = ['苹果', '香蕉', '地方', '苹果', '香蕉', '地方'];
    List<Widget> list = [];
    for (var i = 0; i < titles.length; i++) {
      list.add(Text(titles[i],
          style: TextStyleUnit.pingFangRegular(
              16, idx == i ? Color(0xFF23BDC5) : ColorUnit.color3())));
    }
    return list;
  }

  static customSelectView(BuildContext context,
      {bool showTopActions = true,
      List titles,
      Function onCancel,
      CasSelectViewCallback onConfirm,
      CasSelectViewCallback onChanged}) {
    int idx = 0;
    int textIndex = 0;

    var textArr = getChildren(textIndex);

    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Container(
              height: 200,
              child: Column(children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                            onTap: () {
                              if (onCancel != null) {
                                onCancel();
                              }
                              navigator.pop();
                            },
                            child: Text('取消',
                                style: TextStyleUnit.pingFangRegular(
                                    16, ColorUnit.color9()))),
                        GestureDetector(
                            onTap: () {
                              onConfirm(idx);
                              navigator.pop();
                            },
                            child: Text('确认',
                                style: TextStyleUnit.pingFangRegular(
                                    16, ColorUnit.colorMain())))
                      ]),
                ),
                Expanded(
                  child: StatefulBuilder(
                    builder: (context,_setState){
                      return CupertinoTheme(
                          data: CupertinoThemeData(
                            textTheme: CupertinoTextThemeData(
                              dateTimePickerTextStyle:
                              TextStyle(color: Colors.blue),
                            ),
                          ),
                          child: CupertinoPicker(
                            onSelectedItemChanged: (int value) {
                              if (onChanged != null) {
                                onChanged(value);
                                idx = value;
                                textIndex = value;
                                _setState() {
                                  textArr = getChildren(value);
                                }
                              }
                            },
                            itemExtent: 30,
                            children: textArr,
                          ));
                    },
                  ),
                )
              ]));
        });
  }

  static showDialogConfirm(
    BuildContext context, {
    String titles,
    String content,
    String confirmTxt,
    Function onCancel,
    Function onConfirm,
  }) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) => CupertinoAlertDialog(
              title: Text(titles ?? ''),
              content: Text(content ?? ''),
              actions: [
                CupertinoDialogAction(
                  isDefaultAction: true,
                  child: Text(
                    '关闭',
                    style:
                        TextStyleUnit.pingFangRegular(17, ColorUnit.color9()),
                  ),
                  onPressed: () {
                    onCancel();
                    Navigator.of(context).pop();
                  },
                ),
                CupertinoDialogAction(
                  isDefaultAction: true,
                  child: Text(
                    confirmTxt ?? '确认',
                    style: TextStyleUnit.pingFangRegular(20, Color(0xFF37BBFB)),
                  ),
                  onPressed: () {
                    onConfirm();
                    Navigator.of(context).pop();
                  },
                )
              ],
            ));
  }

}
