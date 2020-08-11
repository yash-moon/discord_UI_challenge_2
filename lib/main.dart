import 'package:flutter/material.dart';
import 'package:ui_challenge2/custom_extensions.dart';
import 'package:ui_challenge2/ui_challenge_2.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UIChallenge2(),
    );
  }
}
