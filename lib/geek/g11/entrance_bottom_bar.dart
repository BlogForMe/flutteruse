import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteruse/custom_icon/my_icons_icons.dart';
import 'package:flutteruse/geek/g11/router.dart';

class Entrance extends StatefulWidget {
  final int indexValue;

  Entrance({Key key, this.indexValue}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EntranceState();
  }
}

class _EntranceState extends State<Entrance> {
  var _indexNum = 0;
  Router router = Router();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Two You'),
      ),
      body: Stack(children: [
        _getPagesWidget(0),
        _getPagesWidget(1),
        _getPagesWidget(2)
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(MyIcons.tab_health),
              title: Text('推荐'),
              activeIcon: Icon(MyIcons.tab_health)),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('关注'),
              activeIcon: Icon(Icons.favorite_border)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('我'),
              activeIcon: Icon(Icons.person_outline))
        ],
        iconSize: 24,
        currentIndex: _indexNum,

        /// 选中后，底部BottomNavigationBar内容的颜色(选中时，默认为主题色)
        /// （仅当type: BottomNavigationBarType.fixed,时生效）
        fixedColor: Colors.lightBlueAccent,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          if (_indexNum != index) {
            setState(() {
              _indexNum = index;
            });
          }
        },
      ),
    );
  }

  Widget _getPagesWidget(int index) {
    List<Widget> widgetList = [
      router.getPageByRouter('homepage'),
      Icon(Icons.directions_transit),// 第二个
      router.getPageByRouter('userpage')
    ];
    return Offstage(
      offstage: _indexNum != index,
      child: TickerMode(
        enabled: _indexNum == index,
        child: widgetList[index],
      ),
    );
  }
}
