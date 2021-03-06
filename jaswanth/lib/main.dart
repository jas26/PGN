import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jaswanth/screens/wrapper.dart';
//import 'tempremove.dart';

void main() {
  runApp(
      MaterialApp(
        home: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return wrapper();
  }
}