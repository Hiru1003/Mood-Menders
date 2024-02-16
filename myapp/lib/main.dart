import 'package:app/loading_page.dart';
import 'package:flutter/material.dart';
import 'package:app/newdiary.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, 
        //home: loading_page()
        home: NewDiary(),
        );
  }
}
