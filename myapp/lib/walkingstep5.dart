import 'package:app/button.dart';
import 'package:app/walkingstep6.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class walkingstep5_page extends StatefulWidget {
  const walkingstep5_page({
    super.key,
  });

  @override
  State<walkingstep5_page> createState() => _walkingstep5_pageState();
}

class _walkingstep5_pageState extends State<walkingstep5_page> {
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
        child: Column(
          children: [
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
                      'lib/images/step14.png',
                      height: 210,
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 5,
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
                        'Step 05',
                        textAlign: TextAlign.center,
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
              height: 5,
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
                        'Keep your gaze soft and slightly lowered, about \na few feet in front of you. This helps \nmaintain a sense of presence without getting \nlost in distractions.',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            color: const Color.fromARGB(255, 70, 66, 68),
                            fontSize: 13,
                            height: 1.2,
                            wordSpacing: 1.7,
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
                          builder: (context) => (walkingstep6_page())),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
