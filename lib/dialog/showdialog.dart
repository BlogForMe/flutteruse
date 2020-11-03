import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteruse/widget/casSelectView.dart';
import 'package:flutteruse/widget/preference.dart';

import 'CuperDialog1.dart';
import 'DialogCheckbox.dart';

class DialogShow extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<DialogShow> {
  var selectIndex;

  int idx;

  bool withTree;

  void displayDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
              title: Text(
                  'Allow "Maps" to access your location while you use the app?'),
              content: Text(
                  'Your current location will be displayed on the map and used for directions, nearby search results, and estimated travel times.'),
              actions: <Widget>[
                CupertinoDialogAction(
                  child: Text('Don\'t Allow'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                CupertinoDialogAction(
                  child: Text('Allow'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('显示dialog'),
        ),
        body: Column(
          children: [
            RaisedButton(
              onPressed: () {
                CasSelectView.showDialogConfirm(context,
                    titles: '我是title',
                    content: '我是content',
                    confirmTxt: '确认', onConfirm: () {
                  print('确认');
                }, onCancel: () {
                  print('取消');
                });
              },
              child: Text('确认 取消'),
            ),
            RaisedButton(
              onPressed: () {
                // CasSelectView.customSelectView(context, onConfirm: (idx) {}, onChanged: (index) {
                //   setState(() {
                //     print('index $index');
                //   });
                // });
              },
              child: Text('底部弹出框'),
            ),
            RaisedButton(
              child: Text("对话框2"),
              onPressed: () async {
                bool delete = await showDeleteConfirmDialog2();
                if (delete == null) {
                  print("取消删除");
                } else {
                  print("同时删除子目录: $delete");
                }
              },
            ),
            RaisedButton(
              child: Text("话框3（复选框可点击）"),
              onPressed: () async {
                //弹出删除确认对话框，等待用户确认
                bool deleteTree = await showDeleteConfirmDialog3();
                if (deleteTree == null) {
                  print("取消删除");
                } else {
                  print("同时删除子目录: $deleteTree");
                }
              },
            ),
          ],
        ),
    );
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

  customSelectView(BuildContext context,
      {bool showTopActions = true,
      List titles,
      Function onCancel,
      CasSelectViewCallback onConfirm,
      CasSelectViewCallback onChanged}) {
    int idx = 0;
    int textIndex = 0;
  }

  Future<bool> showDeleteConfirmDialog2() {
    withTree = false; // 默认复选框不选中
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("提示"),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("您确定要删除当前文件吗?"),
              Row(
                children: <Widget>[
                  Text("同时删除子目录？"),
                  Checkbox(
                    value: withTree,
                    onChanged: (bool value) {
                      //复选框选中状态发生变化时重新构建UI
                      setState(() {
                        //更新复选框状态
                        withTree = !withTree;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text("取消"),
              onPressed: () => Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text("删除"),
              onPressed: () {
                //执行删除操作
                Navigator.of(context).pop(withTree);
              },
            ),
          ],
        );
      },
    );
  }

  Future<bool> showDeleteConfirmDialog3() {
    bool _withTree = false; //记录复选框是否选中
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("提示"),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("您确定要删除当前文件吗?"),
              Row(
                children: <Widget>[
                  Text("同时删除子目录？"),
                  DialogCheckbox(
                    value: _withTree, //默认不选中
                    onChanged: (bool value) {
                      //更新选中状态
                      _withTree = !_withTree;
                    },
                  ),
                ],
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text("取消"),
              onPressed: () => Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text("删除"),
              onPressed: () {
                // 将选中状态返回
                Navigator.of(context).pop(_withTree);
              },
            ),
          ],
        );
      },
    );
  }
}
