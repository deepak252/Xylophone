import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  void playSound(int noteNumber)
  {
    final player=AudioCache();
    player.play('note$noteNumber.wav');
  }
  Widget colorNote({int noteNumber,Color color})
  {
    return Expanded(
            child: FlatButton(
              onPressed: (){playSound(noteNumber);},
              color: color,
            ),
          );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              colorNote(noteNumber: 1,color: Colors.red),
              colorNote(noteNumber: 2,color: Colors.orange),
              colorNote(noteNumber: 3,color: Colors.yellow),
              colorNote(noteNumber: 4,color: Colors.lightGreen),
              colorNote(noteNumber: 5,color: Colors.green),
              colorNote(noteNumber: 6,color: Colors.blue),
              colorNote(noteNumber: 7,color: Colors.purple),


            ],
          )          
        )

      )      
    );
  }
}


