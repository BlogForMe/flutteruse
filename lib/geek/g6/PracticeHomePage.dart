import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ArticleCard.dart';
import 'ArticleSummaryStruct.dart';
import 'BannerInfo.dart';
import 'UserInfoStruct.dart';

class Geek06 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Two You',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Two You'),
        ),
        body: Center(child: PracticeHomePage(),),
      ),
    );
  }
}

class PracticeHomePage extends StatelessWidget {
  /// banner 地址信息
  final String bannerImage =
      'https://img.089t.com/content/20200227/osbbw9upeelfqnxnwt0glcht.jpg';

  final UserInfoStruct userInfo = UserInfoStruct('flutter',
      'https://i.pinimg.com/originals/1f/00/27/1f0027a3a80f470bcfa5de596507f9f4.png');

  /// 帖子概要描述信息
  final ArticleSummaryStruct articleInfo = ArticleSummaryStruct(
      '你好，交个朋友',
      '我是一个小可爱',
      'https://i.pinimg.com/originals/e0/64/4b/e0644bd2f13db50d0ef6a4df5a756fd9.png',
      20,
      30);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: [
          BannerInfo(bannerImage:bannerImage),
          ArticleCard(userInfo: userInfo, articleInfo: articleInfo)
        ],
      ),
    );
  }
}
