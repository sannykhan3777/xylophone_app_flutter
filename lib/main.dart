import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 15.0,
              ),
              Center(
                  child: Text(
                "Welcome to the Xylophone App",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
              )),
              SizedBox(
                height: 15.0,
              ),
              buttonSounds("assets_note1.wav", Colors.red, 1),
              buttonSounds("assets_note2.wav", Colors.blue, 2),
              buttonSounds("assets_note3.wav", Colors.yellow, 3),
              buttonSounds("assets_note4.wav", Colors.green, 4),
              buttonSounds("assets_note5.wav", Colors.brown, 5),
              buttonSounds("assets_note6.wav", Colors.purple, 6),
              buttonSounds("assets_note7.wav", Colors.pink, 7),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buttonSounds(String path, Color clr, int toneNo) {
    return Expanded(
      child: FlatButton(
        child: Text(
          "Tone $toneNo",
          style: TextStyle(color: Colors.grey.shade800, fontSize: 18.0),
        ),
        onPressed: () {
          final player = AudioCache();
          player.play(path);
        },
        // child: Text("Press here"),
        color: clr,
      ),
    );
  }
}
