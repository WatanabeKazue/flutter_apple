import 'package:flutter/material.dart';
import 'package:flutter_apple/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ツッコミマシーン",
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
