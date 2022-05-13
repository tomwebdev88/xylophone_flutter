import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    // call this method when desired
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({Color color, int keySound}) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        child: Text(''),
        onPressed: () {
          playSound(keySound);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, keySound: 1),
              buildKey(color: Colors.orange, keySound: 2),
              buildKey(color: Colors.yellow, keySound: 3),
              buildKey(color: Colors.green, keySound: 4),
              buildKey(color: Colors.teal, keySound: 5),
              buildKey(color: Colors.blue, keySound: 6),
              buildKey(color: Colors.purple, keySound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
