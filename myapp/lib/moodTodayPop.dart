import 'package:flutter/material.dart';

class Emoji extends StatefulWidget {
  @override
  _EmojiState createState() => _EmojiState();
}

class _EmojiState extends State<Emoji> {
  bool imageTapped = false;

  void recordEvent(String imagePath) {
    // Your existing code here...

    setState(() {
      imageTapped = true;
    });
  }

  void checkImageTapped() {
    if (!imageTapped) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text('You have not selected any image.'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Diary'),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  recordEvent('lib/images/loveearth (1).png');
                },
                child: Image.asset('lib/images/loveearth (1).png', fit: BoxFit.scaleDown),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  recordEvent('lib/images/loveearth (2).png');
                },
                child: Image.asset('lib/images/loveearth (2).png', fit: BoxFit.scaleDown),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  recordEvent('lib/images/loveearth (3).png');
                },
                child: Image.asset('lib/images/loveearth (3).png', fit: BoxFit.scaleDown),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  recordEvent('lib/images/loveearth (4).png');
                },
                child: Image.asset('lib/images/loveearth (4).png', fit: BoxFit.scaleDown),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  recordEvent('lib/images/loveearth (5).png');
                },
                child: Image.asset('lib/images/loveearth (5).png', fit: BoxFit.scaleDown),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: checkImageTapped,
        child: Icon(Icons.check),
      ),
    );
  }
}