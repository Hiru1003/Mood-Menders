import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moodmenders/Components/button.dart';

class breathawarenessmed_page extends StatefulWidget {
  const breathawarenessmed_page({
    super.key,
  });

  @override
  State<breathawarenessmed_page> createState() =>
      _breathawarenessmed_pageState();
}

class _breathawarenessmed_pageState extends State<breathawarenessmed_page> {
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
        backgroundColor: const Color.fromARGB(251, 241, 255, 252),
        body: SingleChildScrollView(
            child: Column(children: [
          //description
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 204, 248, 245),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //message
                    Text(
                      'Breif Description',
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

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 204, 248, 245),
              ),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //message
                    Text(
                      'Breath awareness meditation is a powerful \nmindfulness practice that centers your \nattention on the natural rhythm of your \nbreath. This simple yet transformative \ntechnique can help cultivate a sense of \ncalm, presence, and self-awareness. ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 12,
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
                color: const Color.fromARGB(255, 204, 248, 245),
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

          //preconsiderations
          const SizedBox(
            height: 5,
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //message
                Text(
                  'Pre-Considerations',
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      color: const Color.fromARGB(255, 70, 66, 68),
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 5,
          ),

          //two containers
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(251, 241, 255, 252),
                      border: Border.all(
                        color: const Color.fromARGB(255, 204, 248, 245),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //message
                        Text(
                          'Comfortable \nPosition',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              color: const Color.fromARGB(255, 70, 66, 68),
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: 120,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(251, 241, 255, 252),
                      border: Border.all(
                        color: const Color.fromARGB(255, 204, 248, 245),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //message
                        Text(
                          'Quiet \nEnvironment',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              color: const Color.fromARGB(255, 70, 66, 68),
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          //another two containers
          const SizedBox(
            height: 5,
          ),

          //two containers
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(251, 241, 255, 252),
                      border: Border.all(
                        color: const Color.fromARGB(255, 204, 248, 245),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //message
                        Text(
                          'Minimize \nDistrations',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              color: const Color.fromARGB(255, 70, 66, 68),
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: 120,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(251, 241, 255, 252),
                      border: Border.all(
                        color: const Color.fromARGB(255, 204, 248, 245),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //message
                        Text(
                          'Physical \nComfort',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              color: const Color.fromARGB(255, 70, 66, 68),
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 15,
          ),
          //continue button
          Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: MyButton(
                buttontext: 'Start Meditation Now',
                onTap: () {
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              (const breathawarenessstep1_page())),
                    );
                  }
                },
              )),
        ])));
  }
}
