import 'package:flutter/material.dart';
import 'package:music_player/Home/home.dart';
import 'package:music_player/Home/playSong.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/playSong': (context) => Song(),
      },
    );
  }
}