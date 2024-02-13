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
  padding: EdgeInsets.only(left: 10.0, top:20.0), 
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
  padding: EdgeInsets.only(right:48.0, top: 16.0), 
  child: ElevatedButton(
    onPressed: () {
      // button functionality 
    },
    child: const Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: <Widget>[
    Icon(Icons.add, color: const Color.fromARGB(255, 70, 66, 68),), 
    Text(
      'New',
      style: TextStyle(
        fontSize: 16,  
        color: const Color.fromARGB(255, 70, 66, 68), 
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
                fit: BoxFit.cover,
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
          mainAxisAlignment: MainAxisAlignment.start,
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
            
  Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
     Padding(
      padding: EdgeInsets.only(left: 20.0), // Adjust the padding as needed
      child: Text(
        '16 October 2023',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.only(right: 24.0),
      child: Text(
        'Today',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
   
  ],
),
          ],
        ),
      ),
    );
  }
}
