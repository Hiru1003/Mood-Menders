import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class walkingstep2_page extends StatefulWidget {
  const walkingstep2_page({
    super.key,
  });

  @override
  State<walkingstep2_page> createState() => _walkingstep2_pageState();
}

class _walkingstep2_pageState extends State<walkingstep2_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Padding(
        padding: const EdgeInsets.only(left: 10,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[Text('WALKING MEDITATION',style: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.displayLarge,
          color: const Color.fromARGB(255, 70, 66, 68),
          fontSize: 18,
          fontWeight: FontWeight.w400
          ), ),
    );
  }
}
