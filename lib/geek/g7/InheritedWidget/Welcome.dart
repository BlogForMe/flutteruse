import 'package:flutter/cupertino.dart';

import 'NameInheritedWidget.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('welcome build');
    final name = (context.inheritFromWidgetOfExactType(NameInheritedWidget)
            as NameInheritedWidget)
        .name;

    return Text('欢迎 $name');
  }
}
