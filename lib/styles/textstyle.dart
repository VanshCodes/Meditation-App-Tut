import 'package:flutter/material.dart';

class TextLayoutStyle {
  TextStyle mainHeading = TextStyle(fontWeight: FontWeight.bold, fontSize: 30);
  TextStyle subHeading = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
  TextStyle basicHeading = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
  TextStyle smallHeading = TextStyle(fontSize: 10);
}

class TextSelectedLayoutStyle {
  TextStyle mainHeading =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white);
  TextStyle subHeading =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white);
  TextStyle basicHeading =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white);
  TextStyle smallHeading = TextStyle(fontSize: 10, color: Colors.white);
}

var textLayout = TextLayoutStyle();
var textSelectedLayout = TextSelectedLayoutStyle();
