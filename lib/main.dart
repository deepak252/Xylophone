import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:SafeArea(
          child:Center(
            child: FlatButton(
              onPressed: (){
                // static AudioCache player=new AudioCache();
                final player=AudioCache();
                // static AudioCache player = AudioCache();
                player.play('note1.wav');
              },
              child: Text("Click me")
            )
          )
        )

      )      
    );
  }
}