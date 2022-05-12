import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    // call this method when desired
    player.play('note$noteNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                child: Text(''),
                onPressed: () {
                  playSound(1);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.orange),
                child: Text(''),
                onPressed: () {
                  playSound(2);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                child: Text(''),
                onPressed: () {
                  playSound(3);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.green),
                child: Text(''),
                onPressed: () {
                  playSound(4);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.teal),
                child: Text(''),
                onPressed: () {
                  playSound(5);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                child: Text(''),
                onPressed: () {
                  playSound(6);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.purple),
                child: Text(''),
                onPressed: () {
                  playSound(7);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
