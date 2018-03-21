import 'package:flutter/material.dart';

import './pages/home.dart';

void main() {
  runApp(new MaterialApp(
    home: new Home(),
    theme: new ThemeData(
      primarySwatch: Colors.blue
    )// ThemeData
  ));// MaterialApp/runApp
}