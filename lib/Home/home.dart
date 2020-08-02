import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/Home/playSong.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();

  Function playPause() {
    assetsAudioPlayer.open(
      Audio('assets/audios/Alone-Alan-Walker.mp3',
      ),
      autoStart: true,
    );
  }
}

class _HomeState extends State<Home> {
  var playIcon = Icon(Icons.play_circle_filled);
  bool play = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Music Player'),
      ),
      backgroundColor: Colors.pinkAccent[100],
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Container(
                child: Text(
                  'My Playlist',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              child: Card(
                color: Colors.greenAccent,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Center(
                        child: Text(
                          'Alone - Alan Walker',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: IconButton(
                          alignment: Alignment.centerRight,
                          icon: Icon(Icons.play_circle_filled),
                          onPressed: () {
                            Song song = new Song();
                            song.playPause();
                            Navigator.pushNamed(context, '/playSong', arguments: {'songName': 'Alone-Alan-Walker'});
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              width: double.infinity,
              height: 80,
              child: Card(
                color: Colors.greenAccent,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Center(
                        child: Text(
                          'Faded',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: IconButton(
                          alignment: Alignment.centerRight,
                          icon: Icon(Icons.play_circle_filled),
                          onPressed: () {
                            Navigator.pushNamed(context, '/playSong', arguments: {'songName': 'Ab'});
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              width: double.infinity,
              height: 80,
              child: Card(
                color: Colors.greenAccent,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Center(
                        child: Text(
                          'Abc',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: IconButton(
                          alignment: Alignment.centerRight,
                          icon: Icon(Icons.play_circle_filled),
                          onPressed: () {
                            Navigator.pushNamed(context, '/playSong', arguments: {'songName': 'Abc'});
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}