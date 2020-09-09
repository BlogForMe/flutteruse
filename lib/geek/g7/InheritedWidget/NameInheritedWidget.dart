import 'package:flutter/cupertino.dart';

class NameInheritedWidget extends InheritedWidget {
  /// 共享状态
  final String name;

  /// 修改共享状态方法
  final Function onNameChange;

  NameInheritedWidget(
      {Key key,
      @required Widget child,
      @required this.name,
      @required this.onNameChange})
      : super(key: key, child: child);

  /// 构造函数
  @override
  bool updateShouldNotify(NameInheritedWidget oldWidget) =>
      name != oldWidget.name;
}
