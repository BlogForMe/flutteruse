import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'NameInheritedWidget.dart';

class RandomName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String name =
        (context.inheritFromWidgetOfExactType(NameInheritedWidget)
                as NameInheritedWidget)
            .name;
    final Function changeName =
        (context.inheritFromWidgetOfExactType(NameInheritedWidget)
                as NameInheritedWidget)
            .onNameChange;
    return FlatButton(
      child: Text(name),
      onPressed: () => changeName(),
    );
  }
}
