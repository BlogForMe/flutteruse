import 'package:flutter/material.dart';
import 'package:flutteruse/widget/preference.dart';

import 'CuperDialog2.dart';

class BottomDialog {
  /**
   * 对话框上所有可能会改变状态的组件都得单独封装在一个在内部管理状态的StatefulWidget
   */
  static Future<int> cuperDialog2(BuildContext context) {
    int _idIndex;
    return showModalBottomSheet<int>(
        context: context,
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
                          child: Text('取消',
                              style: TextStyleUnit.pingFangRegular(
                                  16, ColorUnit.color9())),
                          onTap: () => Navigator.of(context).pop(),
                        ),
                        GestureDetector(
                          child: Text('确认',
                              style: TextStyleUnit.pingFangRegular(
                                  16, ColorUnit.colorMain())),
                          onTap: () => {Navigator.of(context).pop(_idIndex)},
                        )
                      ]),
                ),
                Expanded(
                  child: CuperDialog2(
                    idIndex: _idIndex,
                    onChanged: (int value) {
                      _idIndex = value;
                    },
                  ),
                )
              ]));
        });
  }


  Future<int> cuperDialog3(BuildContext context) {
    int _idIndex;
    return showModalBottomSheet<int>(
        context: context,
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
                          child: Text('取消',
                              style: TextStyleUnit.pingFangRegular(
                                  16, ColorUnit.color9())),
                          onTap: () => Navigator.of(context).pop(),
                        ),
                        GestureDetector(
                          child: Text('确认',
                              style: TextStyleUnit.pingFangRegular(
                                  16, ColorUnit.colorMain())),
                          onTap: () => {Navigator.of(context).pop(_idIndex)},
                        )
                      ]),
                ),
                Expanded(
                  child: CuperDialog2(
                    idIndex: _idIndex,
                    onChanged: (int value) {
                      _idIndex = value;
                    },
                  ),
                )
              ]));
        });
  }
}
