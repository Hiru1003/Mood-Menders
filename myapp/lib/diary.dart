import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Diary extends StatelessWidget {
  const Diary({super.key});

  get bottomNavigationBar => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: [
                  Padding(
  padding: EdgeInsets.all(20.0), // Adjust the value as needed
  child: Text(
    'SECRET DIARY',
    style: GoogleFonts.poppins(
      textStyle: Theme.of(context).textTheme.displayLarge,
      color: const Color.fromARGB(255, 70, 66, 68),
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
  ),
),
                  Padding(
  padding: EdgeInsets.only(right:60.0), // Adjust the padding as needed
  child: ElevatedButton(
    onPressed: () {
      // Add your button functionality here
    },
    child: const Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: <Widget>[
    Icon(Icons.add), // This is the new icon
    Text(
      'New',
      style: TextStyle(
        fontSize: 16, // Adjust as needed
        fontWeight: FontWeight.bold, // Adjust as needed
        color: const Color.fromARGB(255, 70, 66, 68), // Adjust as needed
      ),
    ),
  ],
),
  ),
)
                ],
              ),
              Image.asset(
                'lib/images/diary1.png',
                fit: BoxFit.cover, // Changed from 8 to BoxFit.cover
              ),
              
            ],
          ),
        ),
        titleSpacing: 4.0,
        toolbarHeight: 130,
        toolbarOpacity: 0.9,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(18),
              bottomLeft: Radius.circular(18)),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        elevation: 0.00,
        backgroundColor: const Color.fromARGB(255, 134, 208, 203),
      ),
      backgroundColor: const Color.fromARGB(251, 241, 255, 252),
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            Container(color: Colors.white),
            Row(
              children: <Widget>[],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            Row(
              children: <Widget>[],
            ),
            Align(
  alignment: Alignment.centerLeft,
  child: Text(
    'Today',
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  ),
),
            Text(
              '16 October 2023',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
