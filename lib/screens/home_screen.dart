import 'package:flutter/material.dart';
import 'package:soundpool/soundpool.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ツッコミマシーン"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: [
              _soundButton//TODO  ボタン
              //TODO  ボタン
            ],
          ),
          Row(
            children: [
              //TODO  ボタン
              //TODO  ボタン
            ],
          ),
          Row(
            children: [
              //TODO  ボタン
              //TODO  ボタン
            ],
          ),
        ],
      ),
    );
  }
  Widget _soundButton(){
}


