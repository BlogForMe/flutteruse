import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class GlobleKeyHomePage extends StatefulWidget {
  GlobleKeyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<GlobleKeyHomePage> {
  final GlobalKey<SwitcherWidgetState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SwitcherWidget(
        key: key,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          key.currentState.changeState();
        },
        child: Text('切换'), //点切换 改变SwitcherWidgetState状态
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SwitcherWidget extends StatefulWidget {
  SwitcherWidget({Key key}):super(key:key);
  @override
  SwitcherWidgetState createState() => SwitcherWidgetState();
}

class SwitcherWidgetState extends State<SwitcherWidget> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Switch.adaptive(
            value: isActive,
            activeColor: Colors.blueAccent,
            onChanged: (bool currentStatus) {
              isActive = currentStatus;
              setState(() {});
            }),
      ),
    );
  }

  changeState() {
    isActive = !isActive;
    setState(() {});
  }
}

