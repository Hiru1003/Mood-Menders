import 'package:flutter/material.dart';

class NewDiary extends StatelessWidget {
  const NewDiary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Diary'),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0), // Add some margin
        padding: EdgeInsets.all(10.0), // Add some padding
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          'Your text here',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}