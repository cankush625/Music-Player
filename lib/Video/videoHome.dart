import 'package:flutter/material.dart';
import 'package:music_player/Video/playOnlineVideo.dart';

class VideoHome extends StatefulWidget {
  @override
  _VideoHomeState createState() => _VideoHomeState();
}

class _VideoHomeState extends State<VideoHome> {
  var playIcon = Icon(Icons.play_circle_filled);
  bool play = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
        backgroundColor: Colors.grey[700],
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.ondemand_video),
            onPressed: () {
              PlayOnlineVideo onlineSong = new PlayOnlineVideo();
              Navigator.pushNamed(context, '/playOnlineVideo', arguments: {'videoName': 'Butterfly'});
            },
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Container(
                child: Text(
                  'My Videos',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 140,
              child: Card(
                margin: EdgeInsets.fromLTRB(7, 0, 7, 8),
                color: Colors.grey[300],
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: new Image.asset(
                        'assets/images/mountain.png',
                        height: 120,
                        width: 160,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Center(
                        child: Text(
                          'Mountain',
                          style: TextStyle(
                            fontSize: 18,
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
                            Navigator.pushNamed(context, '/playVideo', arguments: {'videoName': 'mountain'});
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
              height: 140,
              child: Card(
                margin: EdgeInsets.fromLTRB(7, 0, 7, 8),
                color: Colors.grey[300],
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: new Image.asset(
                        'assets/images/alan_walker_alone.jpg',
                        height: 94,
                        width: 160,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Center(
                        child: Text(
                          'Alone',
                          style: TextStyle(
                            fontSize: 18,
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
                            Navigator.pushNamed(context, '', arguments: {'songName': 'Faded'});
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
              height: 140,
              child: Card(
                margin: EdgeInsets.fromLTRB(7, 0, 7, 8),
                color: Colors.grey[300],
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Center(
                        child: Text(
                          'Test',
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
                            Navigator.pushNamed(context, '', arguments: {'songName': 'Abc'});
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