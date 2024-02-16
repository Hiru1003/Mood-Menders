import 'package:app/appBarD.dart';
import 'package:app/gradientButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              Container(
                padding: const EdgeInsets.only(top: 12, bottom: 8),
                alignment: Alignment.center, // Aligns the text to the center
                child: Text(
                  'Add a note',
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.headlineMedium,
                    color: const Color.fromARGB(255, 70, 66, 68),
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft, // Aligns the text to the left
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, top: 15), // Add padding to the left
                  child: Text(
                    'Your small text',
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 70, 66, 68),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              GradientButton(buttonText: 'Save', enableIcon: false,)
            ],
          ),
        ),
      ),
    );
  }
}