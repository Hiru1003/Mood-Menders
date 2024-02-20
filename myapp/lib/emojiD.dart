import 'package:flutter/material.dart';

class Emoji extends StatefulWidget {
  @override
  _EmojiState createState() => _EmojiState();
}

class _EmojiState extends State<Emoji> {
  String selectedImagePath = '';
  bool imageTapped = false;

  void recordEvent(String imagePath) {
    setState(() {
      selectedImagePath = imagePath;
      imageTapped = true;
    });
  }

  void checkImageTapped() {
    if (!imageTapped) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Alert'),
            content: const Text('You have not selected any image.'),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
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
        title: const Text('New Diary'),
      ),
      body: EmojiDisplay(recordEvent: recordEvent, selectedImagePath: selectedImagePath),
      floatingActionButton: FloatingActionButton(
        onPressed: checkImageTapped,
        child: const Icon(Icons.check),
      ),
    );
  }
}

class EmojiDisplay extends StatelessWidget {
  final Function recordEvent;
  final String selectedImagePath;

  EmojiDisplay({required this.recordEvent, required this.selectedImagePath});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildImage('lib/images/loveearth (1).png'),
        buildImage('lib/images/loveearth (2).png'),
        buildImage('lib/images/loveearth (3).png'),
        buildImage('lib/images/loveearth (4).png'),
        buildImage('lib/images/loveearth (5).png'),
      ],
    );
  }

  Widget buildImage(String imagePath) {
    bool isSelected = imagePath == selectedImagePath;
    double size = isSelected ? 100 : 50;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () => recordEvent(imagePath),
          child: Image.asset(imagePath, width: size, height: size),
        ),
      ),
    );
  }
}