
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteruse/poup/show_text_popup.dart';

/**
 * https://github.com/chinabrant/popup_menu
 * https://github.com/snj07/flutter_show_more_text_popup
 *
 */
class TextApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Show more text',
      home: new HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String description =
      "标准体重 45g= \n [(160cm-100)*0.9kg-2.5kg]* 0.8g/KG";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text("Demo Show More"),
      ),
      body: new Container(
          child: new DescriptionTextWidget(text: description),
      ),
    );
  }
}

class DescriptionTextWidget extends StatefulWidget {
  final String text;

  DescriptionTextWidget({@required this.text});

  @override
  _DescriptionTextWidgetState createState() =>
      new _DescriptionTextWidgetState();
}

class _DescriptionTextWidgetState extends State<DescriptionTextWidget> {
  String firstHalf;
  String secondHalf;
  GlobalKey key = new GlobalKey();
  bool flag = true;

  @override
  void initState() {
    super.initState();

    // if (widget.text.length > 40) {
    //   firstHalf = widget.text.substring(0, 40);
    //   secondHalf = widget.text.substring(40, widget.text.length);
    // } else {
      firstHalf = widget.text;
      secondHalf = "";
    // }
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      // margin: EdgeInsets.only(left: 100),
      // padding: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child:/* secondHalf.isEmpty
          ? new Text(firstHalf)
          :*/ new Row(
        children: <Widget>[
          new Text(firstHalf + " "),
          new InkWell(
            child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                new Text(
                  "show more",
                  key: key,
                  style: new TextStyle(color: Colors.blue,backgroundColor: Colors.greenAccent),
                ),
              ],
            ),
            onTap: () {
              showMoreText(widget.text);
            },
          ),
        ],
      ),
    );
  }

  void showMoreText(String text) {
    ShowMoreTextPopup popup = ShowMoreTextPopup(context,
        text: text,
        textStyle: TextStyle(color: Colors.white),
        height: 50,
        width: 250,
        backgroundColor: Colors.black,
        padding: EdgeInsets.all(4.0),
        borderRadius: BorderRadius.circular(10.0));

    /// show the popup for specific widget
    popup.show(
      widgetKey: key,
    );
  }
}