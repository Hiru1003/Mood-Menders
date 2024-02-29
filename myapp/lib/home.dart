import 'package:app/continuebutton.dart';
import 'package:app/diary/diary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home_page extends StatefulWidget {
  const home_page({
    super.key,
  });

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(251, 241, 255, 252),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            padding: const EdgeInsets.all(0),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 134, 208, 203),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  width: 16,
                ),
                Text(
                  'Welcome Back\n....... !',
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      color: const Color.fromARGB(255, 70, 66, 68),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        'lib/images/newbg.png',
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 134, 208, 203),
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
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //message
                  Text(
                    'Keep mending your \nfeelings with us...',
                    style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 15,
                        height: 1.2,
                        wordSpacing: 1.8,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          //frist box
          const SizedBox(
            height: 30,
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
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //message
                    Text(
                      'How do you feel recently ?',
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ),

          //emojis
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 204, 248, 245),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'lib/images/1.png',
                    height: 50,
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  Image.asset(
                    'lib/images/2.png',
                    height: 50,
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  Image.asset(
                    'lib/images/3.png',
                    height: 50,
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  Image.asset(
                    'lib/images/4.png',
                    height: 50,
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  Image.asset(
                    'lib/images/5.png',
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 204, 248, 245),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  //message
                  Text(
                    'Start journalling with us?',
                    style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),

          //continue button
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 204, 248, 245),
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
              child: MyConButton(
                  buttontext: 'Continue',
                  onTap: () {
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => (const Diary())),
                      );
                    }
                  }),
            ),
          ),
        ])));
  }
}
