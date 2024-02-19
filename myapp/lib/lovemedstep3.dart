import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class lovemedstep3_page extends StatefulWidget {
  const lovemedstep3_page({
    super.key,
  });

  @override
  State<lovemedstep3_page> createState() => _lovemedstep3_pageState();
}

class _lovemedstep3_pageState extends State<lovemedstep3_page> {
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'LOVING-KINDNESS \nMEDITATION',
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      color: const Color.fromARGB(255, 70, 66, 68),
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
               
        ),
    );
  }
}
