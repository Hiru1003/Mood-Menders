import 'package:app/aroma.dart';
import 'package:app/stat/stat.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: loading_page()
      //home: Stat(),
      home: Aromatherapy_page(),
    );
  }
}
