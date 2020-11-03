import 'package:flutter/material.dart';

class TextStyleUnit {

  static TextStyle pingFangRegular(double size, Color color){
    return TextStyle(fontSize: size, color: color, fontWeight: FontWeight.w400, decoration: TextDecoration.none);
  }
}

class ColorUnit {
  
  static Color colorMain() => Color(0xFF37BC95);

  static Color colorBg() => Color(0xfff2f2f2);

  static Color color3() => Color(0xff333333);

  static Color color6() => Color(0xff666666);

  static Color color9() => Color(0xff999999);

  static Color colorD() => Color(0xffDDDDDD);
}