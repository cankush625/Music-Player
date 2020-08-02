import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:music_player/Home/home.dart';
import 'package:music_player/Audio/audioHome.dart';
import 'package:music_player/Audio/playSong.dart';
import 'package:music_player/Audio/playOnline.dart';
import 'package:music_player/Video/videoHome.dart';
import 'package:music_player/Video/playVideo.dart';
import 'package:music_player/Video/playOnlineVideo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.black45);
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/audio': (context) => AudioHome(),
        '/playSong': (context) => Song(),
        '/playOnline': (context) => OnlineSong(),
        '/video': (context) => VideoHome(),
        '/playVideo': (context) => Video(),
        '/playOnlineVideo': (context) => PlayOnlineVideo(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}