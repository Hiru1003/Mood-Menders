import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Aromatherapy_page extends StatefulWidget {
  const Aromatherapy_page({
    super.key,
  });

  @override
  State<Aromatherapy_page> createState() => _Aromatherapy_pageState();
}

class _Aromatherapy_pageState extends State<Aromatherapy_page> {
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
                  'AROMATHERAPY \nRECOMMENDATIONS',
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      color: const Color.fromARGB(255, 70, 66, 68),
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                Image.asset(
                  'lib/images/leaf.png',
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
          backgroundColor: const Color.fromARGB(255, 134, 208, 203),
        ),
        backgroundColor: const Color.fromARGB(251, 241, 255, 252),
        body: SingleChildScrollView(
            child: Column(children: [
          //story 01
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 217, 235, 237),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //message
                    Text(
                      'Jasmine Oil',
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            'lib/images/aroma4.png',
                            height: 45,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 217, 235, 237),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //message
                    Text(
                      'Jasmine oil has a sweet, floral scent that is known \nto uplift the mood and reduce stress. It can help \nalleviate feelings of anxiety and depression, \npromoting a sense of well-being and positivity.',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 12,
                          height: 1.2,
                          wordSpacing: 1.8,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 217, 235, 237),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 194, 207, 190),
                    blurRadius: 4,
                    offset: Offset(0, 6), // Shadow position
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //message
                    Text(
                      '',
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ])));
  }
}
