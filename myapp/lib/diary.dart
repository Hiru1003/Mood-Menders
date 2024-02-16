import 'package:flutter/material.dart';

class DiaryPage extends StatelessWidget {
  const DiaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diary Page'),
      ),
      body: Center(
        child: Text(
          'This is the Diary Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}