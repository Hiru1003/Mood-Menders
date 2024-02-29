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
                      fontSize: 22,
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
        ])));
  }
}
