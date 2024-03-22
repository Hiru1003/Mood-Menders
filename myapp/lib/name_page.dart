import 'package:app/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class name_page extends StatefulWidget {
  const name_page({
    super.key,
  });

  @override
  State<name_page> createState() => _name_pageState();
}

class _name_pageState extends State<name_page> {
  final TextEditingController _controller =
      TextEditingController(); // Controller for the text field

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(251, 241, 255, 252),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //logo
                Image.asset(
                  'lib/images/bg.png',
                  height: 150,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //message
                  Text(
                    'What do your friends',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      color: const Color.fromARGB(255, 70, 66, 68),
                      fontSize: 27,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //message
                  Text(
                    'call you?',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      color: const Color.fromARGB(255, 70, 66, 68),
                      fontSize: 27,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 13.0, right: 13.0, top: 20, bottom: 20),
              child: TextField(
                controller:
                    _controller, // Assign the controller to the TextField
                decoration: InputDecoration(
                  hintText: 'Enter your nick name here',
                  hintStyle: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Color.fromARGB(255, 70, 66, 68),
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 70, 66, 68),
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 70, 66, 68),
                    ),
                  ),
                ),
              ),
            ),
            //continue button
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                onTap: () {
                  String nickname =
                      _controller.text; // Get the text field value
                  if (nickname.isNotEmpty) {
                    // Save the nickname to Firestore
                    FirebaseFirestore.instance.collection('users').add({
                      'nickname': nickname,
                      // Add more fields if needed
                    }).then((value) {
                      print('Nickname saved successfully: $nickname');
                      // Navigate to the next screen or perform any other action
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const welcome_page(),
                        ),
                      );
                    }).catchError((error) {
                      print('Failed to save nickname: $error');
                      // Handle the error
                    });
                  } else {
                    print('Nickname cannot be empty');
                    // Handle the case where the nickname is empty
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(colors: <Color>[
                      Color(0xFF77CB7E),
                      Color(0xFFB4CAE8),
                    ]),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Continue',
                        style: TextStyle(
                          color: Color.fromARGB(255, 70, 66, 68),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
