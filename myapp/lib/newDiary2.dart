import 'package:app/appBarD.dart';
import 'package:app/gradientButton.dart';
import 'package:flutter/material.dart';

class NewDiary2 extends StatelessWidget {
  const NewDiary2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 204, 248, 245),
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Add your widgets here
              // You can copy the widgets from the NewDiary class or create new ones
              GradientButton(buttonText: 'Save')
            ],
          ),
        ),
      ),
    );
  }
}