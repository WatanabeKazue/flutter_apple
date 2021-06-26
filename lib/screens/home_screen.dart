import 'package:flutter/material.dart';
import 'package:soundpool/soundpool.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Siring _tex  // Siring _text04 = "残念でした";
  // Siring _text05 = "不合格です";
  // Siring _text06 = "頑張りましょう";

List<String> _texts = ["おめでとうございます","合格です","よくできました","残念でした",
  "不合格です","頑張りましょう"];

List<int> _soundIds = [0,0,0,0,0,0];
Soundpool _soundpool;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ツッコミマシーン"),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
