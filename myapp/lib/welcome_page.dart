import 'package:app/navpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class welcome_page extends StatefulWidget {
  const welcome_page({
    super.key,
  });

  @override
  State<welcome_page> createState() => _welcome_pageState();
}

class _welcome_pageState extends State<welcome_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(251, 241, 255, 252),
        body: SingleChildScrollView(
            child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //logo
              Image.asset(
                'lib/images/bg.png',
                height: 150,
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //message
                Text(
                  'Nice to meet you !',
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      color: const Color.fromARGB(255, 70, 66, 68),
                      fontSize: 30,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text(
                    'Our conversations are private and anonymous. So feel relax and share your feelings with us.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 13,
                        height: 1.8,
                        wordSpacing: 2.5,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          //continue button
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Navbar()),
                  );
                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: const LinearGradient(colors: <Color>[
                        Color(0xFF77CB7E),
                        Color(0xFFB4CAE8),
                      ]),
                    ),
                    padding: const EdgeInsets.all(20),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            ('Continue'),
                            style: TextStyle(
                                color: Color.fromARGB(255, 70, 66, 68),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ]))),
          )
        ])));
  }
}
