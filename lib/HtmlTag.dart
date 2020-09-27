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

    return _HtmlTab();
  }
}
//    https://health.casanubeserver.com/csn_hospital_APIServer/servletUtil/getInformationUrl?informationContentId=580


Widget _HtmlTab() {
  return Container(
    child: Html(
      data: """
    <!--For a much more extensive example, look at example/main.dart-->
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- saved from url=(0111)https://health.casanubeserver.com/csn_hospital_APIServer/servletUtil/getInformationUrl?informationContentId=580 -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>血透肾友居家饮食禁忌——高钠食物</title></head>
  <body>
<p style="text-align:center"><span style="font-size:36px">血透肾友居家饮食禁忌——<span style="color:#e74c3c">高钠食物</span></span></p>

<p><span style="font-size:28px">钠又隐藏在哪些食物中呢？研究显示，我国居民中70%的钠摄入都来自于做饭时添加的调味品，也就是盐、酱油、蚝油这些做饭最常用到的“好帮手”。可见，肾友们在做饭时对钠的控制使用尤为关键。</span></p>

<p style="text-align:center"><span style="font-size:28px"><img alt="" src="https://health.casanubeserver.com/images/20200710/调料59baa56364384477be73ca06eb76bfeb.jpg" style="height:387px; width:600px">​​​​​​​</span></p>

<p><span style="font-size:28px"><span style="color:#e74c3c">高钠食物：</span>盐、酱油、味精、鸡精、腐乳、咸菜、虾皮、火腿、腌制品、熏鱼、酱鸭、笋干、鱼干</span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
  

</body></html>
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
