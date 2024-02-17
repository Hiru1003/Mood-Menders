import 'package:app/appBarD.dart';
import 'package:app/diary.dart';
import 'package:app/gradientButton.dart';
import 'package:app/newDiary2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewDiary extends StatelessWidget {
  const NewDiary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: const CustomAppBar(),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 204, 248, 245),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 8),
                child: Text(
                  'What is your mood today?',
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.headlineMedium,
                    color: const Color.fromARGB(255, 70, 66, 68),
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
           //recordEvent('lib/images/loveearth (1).png');
          },
          child: Image.asset('lib/images/loveearth (1).png', fit: BoxFit.scaleDown),
        ),
      ),
    ),
                 Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            // Record the event in the database
           // recordEvent('lib/images/loveearth (2).png');
          },
          child: Image.asset('lib/images/loveearth (2).png', fit: BoxFit.scaleDown),
        ),
      ),
    ),
                  Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            // Record the event in the database
          //  recordEvent('lib/images/loveearth (3).png');
          },
          child: Image.asset('lib/images/loveearth (3).png', fit: BoxFit.scaleDown),
        ),
      ),
    ),
                 Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            // Record the event in the database
           // recordEvent('lib/images/loveearth (4).png');
          },
          child: Image.asset('lib/images/loveearth (4).png', fit: BoxFit.scaleDown),
        ),
      ),
    ),
                 Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            // Record the event in the database
            //recordEvent('lib/images/loveearth (1).png');
          },
          child: Image.asset('lib/images/loveearth (1).png', fit: BoxFit.scaleDown),
        ),
      ),
    ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 15),
                child: Text(
                  'Emotions',
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.headlineMedium,
                    color: const Color.fromARGB(255, 70, 66, 68),
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Excited'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Proud'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Lonely'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Stressed'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Tired'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Annoyed'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Happy'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Angry'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Joyful'),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,),
                child: Text(
                  'Sphere of life',
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.headlineMedium,
                    color: const Color.fromARGB(255, 70, 66, 68),
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 26.0, left: 26.0),
                      child: Image.asset('lib/images/edu.png', fit: BoxFit.scaleDown),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Image.asset('lib/images/love.png', fit: BoxFit.scaleDown),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Image.asset('lib/images/famliy.png', fit: BoxFit.scaleDown),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Image.asset('lib/images/health.png', fit: BoxFit.scaleDown),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Image.asset('lib/images/personal.png', fit: BoxFit.scaleDown),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Image.asset('lib/images/finance.png', fit: BoxFit.scaleDown),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Image.asset('lib/images/friends.png', fit: BoxFit.scaleDown),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Image.asset('lib/images/leisure.png', fit: BoxFit.scaleDown),
                    ),
                  ),
                ],
              ),
                  GradientButton(
                    buttonText: 'Continue',
                    enableIcon: true,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NewDiary2()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Diary()),
              );
            },
          ),
        ),
      ],
    );
  }
}