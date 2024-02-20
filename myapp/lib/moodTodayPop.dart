import 'package:flutter/material.dart';

class NewDiary extends StatefulWidget {
  @override
  _NewDiaryState createState() => _NewDiaryState();
}

class _NewDiaryState extends State<NewDiary> {
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
      // Your existing code here...

      floatingActionButton: FloatingActionButton(
        onPressed: checkImageTapped,
        child: Icon(Icons.check),
      ),
    );
  }
}