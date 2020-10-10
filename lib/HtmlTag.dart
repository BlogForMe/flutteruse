import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

/**
 * Html 标签显示
 */
class HtmlTag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(title: Text("Html 标签显示")),
      body: Stack(
        alignment: Alignment.center,
        children: [
          SingleChildScrollView(
            child: _HtmlTab(),
          ),
          Positioned(
            bottom: 1,
            child: Text(
              '底部文字',
              style: TextStyle(fontSize: 60, color: Colors.lightBlueAccent),
            ),
          )
        ],
      ),
    );
  }
}
//    https://health.casanubeserver.com/csn_hospital_APIServer/servletUtil/getInformationUrl?informationContentId=580

Widget _HtmlTab() {
  return Container(
    child: Column(
      children: [
        showHtml(),
        Text(
          '显示文字',
          style: TextStyle(fontSize: 60, color: Colors.lightBlueAccent),
        ),
        Text(
          '连接文字',
          style: TextStyle(fontSize: 60, color: Colors.lightBlueAccent),
        )
      ],
    ),
  );
}

// Widget _ClubColumn() {
//   return Container(
//     child: Column(
//       //测试Row对齐方式，排除Column默认居中对齐的干扰
//       // crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Column(
//           mainAxisSize: MainAxisSize.max,
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: <Widget>[
//             Text("1 hello world "),
//             Text(" I am Jack ")
//           ],
//         ),
//       ],
//     ),
//   );
// }

Widget showHtml() {
  return Html(
    data: """
   <p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>

<p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>

<p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>

<p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>

<p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>

<p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>

<p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>

<p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>
<p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>

<p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>

<p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>

<p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>

<p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>
<p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>
<p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>
<p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>

<p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>

<p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>

<p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>

<p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>
<p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>
<p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>

<p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>

<p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>

<p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>

<p style="text-align:center"><span style="font-size:24px">这是一条测试数据</span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><img alt="" src="https://dev.casanubeserver.com/images/20200923/微信图片_2020080920050488157961ecf148609dd186fa01ecca73.png" style="height:100%; width:100%" /></p>
  """,
    //Optional parameters:
    padding: EdgeInsets.all(8.0),
    backgroundColor: Colors.white70,
    defaultTextStyle: TextStyle(fontFamily: 'serif'),
    linkStyle: const TextStyle(
      color: Colors.redAccent,
    ),
    onLinkTap: (url) {
      // open url in a webview
    },
    customRender: (node, children) {
      // if(node is dom.Element) {
      //   switch(node.localName) {
      //     case "video": return Chewie(...);
      //     case "custom_tag": return CustomWidget(...);
      //   }
      // }
    },
  );
}
