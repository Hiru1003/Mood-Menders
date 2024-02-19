import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class lovemedstep4_page extends StatefulWidget {
  const lovemedstep4_page({
    super.key,
  });

  @override
  State<lovemedstep4_page> createState() => _lovemedstep4_pageState();
}

class _lovemedstep4_pageState extends State<lovemedstep4_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Padding(
        padding: const EdgeInsets.only(left: 10,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        Text('LOVING-KINDNESS \nMEDITATION',style: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.displayLarge,
          color: const Color.fromARGB(255, 70, 66, 68),
          fontSize: 18,
          fontWeight: FontWeight.w400
          ), ),
          Image.asset('lib/images/bg.png',
          height: 72,)
          ],
      
      ),
    );
  }
}
