import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class movementstep6_page extends StatefulWidget {
  const movementstep6_page({
    super.key,
  });

  @override
  State<movementstep6_page> createState() => _movementstep6_pageState();
}

class _movementstep6_pageState extends State<movementstep6_page> {
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
        
      ),
    );
  }
}
