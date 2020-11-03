import 'package:flutter/cupertino.dart';

class RectRoundPainter extends CustomPainter {

  final widthRate;

  RectRoundPainter(this.widthRate);

  @override
  void paint(Canvas canvas, Size size) {
    print('width ${size.width}  height ${size.height}');

    final paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0
      ..color = Color(0xffDDDDDD);
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromLTWH(0, 0, size.width, 12), Radius.circular(5)),
        paint);

    paint.color = Color(0xff35BC9E);
    canvas.drawRRect(
        RRect.fromLTRBAndCorners(0, 0, size.width * widthRate, 12,
            bottomLeft: Radius.circular(5), topLeft: Radius.circular(5)),
        paint);
  }

  @override
  bool shouldRepaint(RectRoundPainter oldDelegate) => false;
}
