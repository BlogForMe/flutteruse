import 'package:flutter/cupertino.dart';

import 'ArticleBottomBar.dart';
import 'ArticleLikeBar.dart';
import 'ArticleSummary.dart';
import 'ArticleSummaryStruct.dart';
import 'UserInfoStruct.dart';

class ArticleCard extends StatelessWidget {
  /// 传入的用户信息
  final UserInfoStruct userInfo;

  /// 传入的帖子信息
  final ArticleSummaryStruct articleInfo;

  /// 构造函数
  const ArticleCard({Key key, this.userInfo, this.articleInfo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        ArticleSummary(
            title: articleInfo.title,
            summary: articleInfo.summary,
            articleImage: articleInfo.articleImage),
        Row(
          children: [
            ArticleBottomBar(
                nickname: userInfo.nickname,
                headerImage: userInfo.headerImage,
                commentNum: articleInfo.commentNum),
            ArticleLikeBar(likeNum:articleInfo.likeNum)
          ],
        )
      ],
    );
  }
}

