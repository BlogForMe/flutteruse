import 'package:flutter/material.dart';

import 'RectRoundWidget.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(RectRoundPaint());
}

class RectRoundPaint extends StatelessWidget {
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
                  child: CustomPaint(painter: RectRoundPainter(0.9)),
                ))));
  }
}

