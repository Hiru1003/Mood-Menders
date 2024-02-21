import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class walkingstep1_page extends StatefulWidget {
  const walkingstep1_page({
    super.key,
  });

  @override
  State<walkingstep1_page> createState() => _walkingstep1_pageState();
}

class _walkingstep1_pageState extends State<walkingstep1_page> {
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
          Text('WALKING MEDITATION',style: GoogleFonts.poppins(
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
      titleSpacing: 4.0,
        toolbarHeight: 65,
        toolbarOpacity: 0.9,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(18),
           bottomLeft: Radius.circular(18)),
        ),
    );
  }
}
