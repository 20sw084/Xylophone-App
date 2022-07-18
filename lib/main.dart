import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp(const MyApp());
}

Expanded createButton(Color c, int index) {
  return Expanded(
    child: FlatButton(
      color: c,
      onPressed: () {
        final player = AudioCache();
        player.load('note$index.wav');
      },
      child: Image.asset('images/note1.png'),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              createButton(Colors.blue, 1),
              createButton(Colors.black, 2),
              createButton(Colors.amber, 3),
              createButton(Colors.brown, 4),
              createButton(Colors.green, 5),
              createButton(Colors.deepPurple, 6),
              createButton(Colors.deepOrange, 7),
            ],
          ),
        ),
      ),
    );
  }
}
