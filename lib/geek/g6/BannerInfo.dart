import 'package:flutter/cupertino.dart';

class BannerInfo extends StatelessWidget {
  final String bannerImage;


  const BannerInfo({Key key, this.bannerImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        Image.network(
          bannerImage,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        )
      ],
    );
  }
}
