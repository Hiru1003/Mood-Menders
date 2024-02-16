import 'package:app/appBarD.dart';
import 'package:flutter/material.dart';

class DiaryPage extends StatelessWidget {
  const DiaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Text(
          'This is the Diary Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}