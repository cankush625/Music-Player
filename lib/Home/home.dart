import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var playIcon = Icon(Icons.play_circle_filled);
  bool play = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hybrid Media Player'),
        backgroundColor: Colors.grey[700],
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
            },
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'assets/images/audio.png',
                        height: 150,
                        width: 150,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Music Player',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/audio');
                },
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/video.png',
                      height: 150,
                      width: 150,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Video Player',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/video');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}