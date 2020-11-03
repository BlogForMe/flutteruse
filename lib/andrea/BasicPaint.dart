import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
        home: Scaffold(
            // Outer white container with padding
            body: Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 80),
                color: Colors.white,
                // Inner yellow container
                child: Container(
                  width: 300,
                  height: 300,
                  color: Colors.yellow,
                  child: CustomPaint(painter: FaceOutlinePainter()),
                ))));
  }
}

class FaceOutlinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    print('width ${size.width}  height ${size.height}');

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0
      ..color = Colors.indigo;
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromLTWH(20, 80, 100, 100), Radius.circular(20)),
        paint);

    // canvas.drawOval(Rect.fromLTWH(size.width - 120, 40, 100, 100), paint);

    final mouth = Path();
    // mouth.moveTo(size.width * 0.8, size.height * 0.6);
    mouth.arcToPoint(Offset(size.width*0.5, size.height), radius: Radius.circular(150),clockwise: false);
    canvas.drawPath(mouth, paint);

  }

  @override
  bool shouldRepaint(FaceOutlinePainter oldDelegate) => false;
}
