<<<<<<< HEAD
import 'package:app/loading_page.dart';
=======
import 'package:app/Notification.dart';
import 'package:app/relaxation/aroma.dart';
import 'package:app/diary/diary.dart';
import 'package:app/home.dart';
import 'package:app/loading_page.dart';
import 'package:firebase_core/firebase_core.dart';
>>>>>>> 587cfa39932f78a0219a71670e5c7df2619fc3e7
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: loading_page()
      //home: Stat(),
      home: loading_page(),
    );
=======
    return MaterialApp(debugShowCheckedModeBanner: false, home: loading_page()
        //home: Stat(),
        //home: home_page(),
        );
>>>>>>> 587cfa39932f78a0219a71670e5c7df2619fc3e7
  }
}
