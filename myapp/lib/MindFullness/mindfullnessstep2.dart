import 'package:app/MindFullness/mindfullnessstep3.dart';
import 'package:app/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mindfulnessstep2_page extends StatefulWidget {
  const mindfulnessstep2_page({
    super.key,
  });

  @override
  State<mindfulnessstep2_page> createState() => _mindfulnessstep2_pageState();
}

class _mindfulnessstep2_pageState extends State<mindfulnessstep2_page> {
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
                  'MINDFULLNESS \nMEDITATION',
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
        backgroundColor: const Color.fromARGB(251, 241, 255, 252),
        body: SingleChildScrollView(
            child: Column(children: [
          //image
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              padding: const EdgeInsets.all(1.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //image
                  Image.asset(
                    'lib/images/step2.png',
                    height: 240,
                  )
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //message
                    Text(
                      'Step 02',
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          //para
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //message
                    Text(
                      'Direct your attention to the sensations of your \nbreath. Notice the rising and falling of your \nchest or the sensation of air passing through \nyour nostrils.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 25,
          ),
          //continue button
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: MyButton(
              buttontext: 'Next Step',
              onTap: () {
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => (const mindfulnessstep3_page())),
                  );
                }
              },
            ),
          ),
        ])));
  }
}
