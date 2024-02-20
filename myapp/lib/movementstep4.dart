import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class movementstep4_page extends StatefulWidget {
  const movementstep4_page({
    super.key,
  });

  @override
  State<movementstep4_page> createState() => _movementstep4_pageState();
}

class _movementstep4_pageState extends State<movementstep4_page> {
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
        Text('MOVEMENT-BASED \nMEDITATION',style: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.displayLarge,
          color: const Color.fromARGB(255, 70, 66, 68),
          fontSize: 18,
          fontWeight: FontWeight.w400
          ), ),
          Image.asset('lib/images/newbg.png',
          height: 72,)
          ],
          ),
      ),
    );
  }
}
