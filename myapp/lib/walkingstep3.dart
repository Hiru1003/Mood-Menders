import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class walkingstep3_page extends StatefulWidget {
  const walkingstep3_page({
    super.key,
  });

  @override
  State<walkingstep3_page> createState() => _walkingstep3_pageState();
}

class _walkingstep3_pageState extends State<walkingstep3_page> {
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
                'WALKING MEDITATION',
                style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    color: const Color.fromARGB(255, 70, 66, 68),
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              Image.asset(
                'lib/images/newbg.png',
                height: 72,
              )
            ],
          ),
        ),
      ),
    );
  }
}
