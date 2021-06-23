import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  /*String _text01 ="おめでとうございます";
  String _text02 ="合格です";
  String _text03 ="よくできました";
  String _text04 ="残念でした";
  String _text05 ="不合格です";
  String _text06 ="頑張りましょう";*/

  List<String>_texts = ["おめでとうございます","合格です"
    ,"よくできました","残念でした","不合格です","頑張りましょう"
  ]
   late soundpool? _soundpool;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ツッコミマシーン"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment:CrossAxisAlignment.stretch ,
                children: <Widget>[
                  Expanded(flex: 1,child: _soundButtton()),//TODO ボタン
                  Expanded(flex: 1,child: _soundButtton()),//TODO ボタン
                ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(flex: 1,child: _soundButtton()),//TODO ボタン
                Expanded(flex: 1,child: _soundButtton()),//TODO ボタン
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(flex: 1,child: _soundButtton()),//TODO ボタン
                Expanded(flex: 1,child: _soundButtton()),//TODO ボタン
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget _soundButtton(){
    return Container(
        padding: EdgeInsets.all(8.0),
        child:ElevatedButton(onPressed: , child: );
    )
      
  }
}

