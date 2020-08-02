import 'package:flutter/material.dart';
import 'package:music_player/Audio/playSong.dart';
import 'package:music_player/Audio/playOnline.dart';

class AudioHome extends StatefulWidget {
  @override
  _AudioHomeState createState() => _AudioHomeState();
}

class _AudioHomeState extends State<AudioHome> {
  var playIcon = Icon(Icons.play_circle_filled);
  bool play = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Music Player'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.music_note),
            onPressed: () {
              OnlineSong onlineSong = new OnlineSong();
              onlineSong.playPause();
              Navigator.pushNamed(context, '/playOnline', arguments: {'songName': 'We Are Headed To The East'});
            },
          ),
        ],
        backgroundColor: Colors.grey[700],
      ),
      backgroundColor: Colors.black,
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
                    color: Colors.white,
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
                            Navigator.pushNamed(context, '/playSong', arguments: {'songName': 'Faded'});
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