import 'package:flutter/material.dart';

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
          Expanded(
            flex: 1,
            child: Row(
                children: <Widget>[
                  _soundButtton(),//TODO ボタン
                  _soundButtton(),//TODO ボタン
                ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                _soundButtton(),//TODO ボタン
                _soundButtton(),//TODO ボタン
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                _soundButtton(),//TODO ボタン
                _soundButtton(),//TODO ボタン
              ],
            ),
          ),

        ],
      ),
    );
  }
  Widget _soundButtton(){
    return ElevatedButton(onPressed: , child: );
  }
}

