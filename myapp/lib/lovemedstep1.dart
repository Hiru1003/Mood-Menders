import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class lovemedstep1_page extends StatefulWidget {
  const lovemedstep1_page({
    super.key,
  });

  @override
  State<lovemedstep1_page> createState() => _lovemedstep1_pageState();
}

class _lovemedstep1_pageState extends State<lovemedstep1_page> {
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
                    fontWeight: FontWeight.w400),
              ),
              Image.asset(
                'lib/images/bg.png',
                height: 72,
              )
            ],
          ),
        ),
      ),
    );
  }
}
