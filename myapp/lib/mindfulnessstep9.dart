import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mindfulnessstep9_page extends StatefulWidget {
  const mindfulnessstep9_page({
    super.key,
  });

  @override
  State<mindfulnessstep9_page> createState() => _mindfulnessstep9_pageState();
}

class _mindfulnessstep9_pageState extends State<mindfulnessstep9_page> {
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
        Text('MINDFULLNESS \nMEDITATION',style: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.displayLarge,
          color: const Color.fromARGB(255, 70, 66, 68),
          fontSize: 18,
          fontWeight: FontWeight.w400
          ), ),
          Image.asset('lib/images/bg.png',
          height: 72,)
          ],
          ),
     
      ),
    );
  }
}
