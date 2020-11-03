import 'package:flutter/material.dart';

Future<void> main() async {
  // var future = await Future(() {
  //   print("哈哈哈");
  // });
  // print('111');

  // String s1 = '111';
  // print(s1=='111');
  // var future = Future.value(true);
  // print(future);

  List list =  'newsDetail/id=11'.split(RegExp(r"id="));
  print('newsDetail ' +list[1]);

  List list1 =  'newstopic/id=11&subjectName=name'.split(RegExp(r"id="));
  List list2 =  'newstopic/id=11&subjectName=name'.split(RegExp(r"subjectName="));

  print('newstopic  ' +list1[1]);
  print('newstopic  ' +list2[1]);


}
// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('导航商品详情页'),
//       ),
//       body: Center(
//         child: RaisedButton(
//           child: Text('返回'),
//           onPressed: (){
//             Navigator.pop(context);
//           },
//         ),
//       ),
//     );
//   }
// }