import 'package:flutter/material.dart';

class Emoji extends StatefulWidget {
  @override
  _EmojiState createState() => _EmojiState();
}

class _EmojiState extends State<Emoji> {
  bool imageTapped = false;

  void recordEvent(String imagePath) {
  
    String selectedImagePath = imagePath;

    
    if (imagePath == 'lib/images/loveearth (1).png') {
      print('The first image was tapped');
    } else if (imagePath == 'lib/images/loveearth (2).png') {
      print('The second image was tapped');
    } else if (imagePath == 'lib/images/loveearth (3).png') {
      print('The third image was tapped');
    } else if (imagePath == 'lib/images/loveearth (4).png') {
      print('The fourth image was tapped');
    } else {
      print('The fifth image was tapped');
    };

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
      body: EmojiDisplay(recordEvent: recordEvent),
      floatingActionButton: FloatingActionButton(
        onPressed: checkImageTapped,
        child: Icon(Icons.check),
      ),
    );
  }
}

class EmojiDisplay extends StatelessWidget {
  final Function recordEvent;

  EmojiDisplay({required this.recordEvent});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}