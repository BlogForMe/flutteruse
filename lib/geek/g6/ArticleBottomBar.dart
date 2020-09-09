import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArticleBottomBar extends StatelessWidget {
  /// 用户昵称
  final String nickname;

  /// 用户头像
  final String headerImage;

  /// 评论数量
  final int commentNum;

  /// 构造函数
  const ArticleBottomBar(
      {Key key, this.nickname, this.headerImage, this.commentNum})
      : super(key: key);
  Widget getUserWidget() {
    return Row(
      children: [
        Image.network(
          headerImage,
          width: 15.0,
          height: 15.0,
          fit: BoxFit.cover,
        ),
        Text(nickname)
      ],
    );
  }

  Widget getCommentWiget() {
    return Row(
      children: <Widget>[
        Icon(Icons.comment, color: Colors.grey, size: 18),
        Padding(padding: EdgeInsets.only(left: 10)),
        Text('$commentNum'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [getUserWidget(), getCommentWiget()],
    );
  }
}
