import 'package:flutter/material.dart';

class Doctorinfopage extends StatefulWidget {
  const Doctorinfopage({Key? key}) : super(key: key);

  @override
  State<Doctorinfopage> createState() => _DoctorinfopageState();
}

class _DoctorinfopageState extends State<Doctorinfopage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(251, 241, 255, 252),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Doctor Information',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: const Color.fromARGB(255, 70, 66, 68),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Image.asset(
              'lib/images/leaf.png',
              height: 75,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  'Doctor name:\nDoctor speciality:\nDoctor location:\nDoctor contact:\n',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
