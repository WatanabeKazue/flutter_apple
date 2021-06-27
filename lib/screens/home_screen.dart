import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> _texts = [
    "おめでとうございます",
    "合格です",
    "よくできました",
    "残念でした",
    "不合格です",
    "頑張りましょう"
  ];

  List<int> _soundIds = [0, 0, 0, 0, 0, 0];
  int _soundId = 1;
  late Soundpool _soundpool;

  int number = 3;

  @override
  void initState() {
    super.initState();
    _initSounds();
  }

  void _initSounds() async {
    _soundpool = Soundpool();

    _soundIds[0] = await loadSound("assets/sounds/sound1.mp3");
    _soundIds[1] = await loadSound("assets/sounds/sound2.mp3");
    _soundIds[2] = await loadSound("assets/sounds/sound3.mp3");
    _soundIds[3] = await loadSound("assets/sounds/sound4.mp3");
    _soundIds[4] = await loadSound("assets/sounds/sound5.mp3");
    _soundIds[5] = await loadSound("assets/sounds/sound6.mp3");

    // _soundIds[0] = await rootBundle
    // .load("assets/sounds/sound1.mp3")
    // .then((value) => _soundpool.load(value));
  }

  Future<int> loadSound(String soundPath) {
    return rootBundle.load(soundPath).then((value) => _soundpool.load(value));
  }

  @override
  void dispose() {
    _soundpool.release();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ツッコミマシーン"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(flex: 1,child: _soundButton(_texts[0],_soundIds[0])),//TODO  ボタン
                  Expanded(flex: 1,child: _soundButton(_texts[1],_soundIds[1])),//TODO  ボタン
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(flex: 1,child: _soundButton(_texts[2],_soundIds[2])),//TODO  ボタン
                  Expanded(flex: 1,child: _soundButton(_texts[3],_soundIds[3])),//TODO  ボタン
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(flex: 1,child: _soundButton(_texts[4],_soundIds[4])),//TODO  ボタン
                  Expanded(flex: 1,child: _soundButton(_texts[5],_soundIds[5])),//TODO  ボタン
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _soundButton(String displayText,int soundId) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () => null, //TODO 後で書き換える
          child: Text(displayText), //TODO 後で書き換える
        ),
      ),
    );
  }
}
