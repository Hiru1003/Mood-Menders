import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class breathawarenessstep3_page extends StatefulWidget {
  const breathawarenessstep3_page({
    super.key,
  });

  @override
  State<breathawarenessstep3_page> createState() =>
      _breathawarenessstep3_pageState();
}

class _breathawarenessstep3_pageState extends State<breathawarenessstep3_page> {
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
                'BREATH AWARENESS \nMEDITATION',
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
        titleSpacing: 4.0,
        toolbarHeight: 65,
        toolbarOpacity: 0.9,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(18),
              bottomLeft: Radius.circular(18)),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        elevation: 0.00,
        backgroundColor: Color.fromARGB(255, 134, 208, 203),
      ),
    );
  }
}
