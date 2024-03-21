import 'package:app/breathawarenessmed/breathawarenessstep3.dart';
import 'package:app/components/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class breathawarenessstep2_page extends StatefulWidget {
  const breathawarenessstep2_page({
    super.key,
  });

  @override
  State<breathawarenessstep2_page> createState() =>
      _breathawarenessstep2_pageState();
}

class _breathawarenessstep2_pageState extends State<breathawarenessstep2_page> {
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
                      'lib/images/step13.png',
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
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Text(
                          'Start by taking a few slow, deep breaths. Inhale deeply through your nose, allowing your lungs to fill with air. Exhale slowly through your mouth, releasing any tension.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: const Color.fromARGB(255, 70, 66, 68),
                              fontSize: 13,
                              height: 1.2,
                              wordSpacing: 2.5,
                              fontWeight: FontWeight.w400),
                        ),
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
                          builder: (context) =>
                              (const breathawarenessstep3_page())),
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
