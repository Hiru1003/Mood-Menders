import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewDiary extends StatelessWidget {
  const NewDiary({Key? key}) : super(key: key);

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, top:20.0), 
                    child: Text(
                      'SECRET DIARY',
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headline4,
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              Image.asset(
                'lib/images/diary1.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        titleSpacing: 4.0,
        toolbarHeight: 130,
        toolbarOpacity: 0.9,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(18),
              bottomLeft: Radius.circular(18)),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        elevation: 0.00,
        backgroundColor: const Color.fromARGB(255, 134, 208, 203),
      ),
    body: Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 204, 248, 245),
        borderRadius: BorderRadius.circular(10),
      ),
      child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 12, bottom: 8),
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
        padding: EdgeInsets.all(8.0),
        child: Image.asset('lib/images/loveearth (1).png', fit: BoxFit.scaleDown),
      ),
    ),
    Expanded(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Image.asset('lib/images/loveearth (2).png', fit: BoxFit.scaleDown),
      ),
    ),
    Expanded(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Image.asset('lib/images/loveearth (3).png', fit: BoxFit.scaleDown),
      ),
    ),
    Expanded(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Image.asset('lib/images/loveearth (4).png', fit: BoxFit.scaleDown),
      ),
    ),
    Expanded(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Image.asset('lib/images/loveearth (5).png', fit: BoxFit.scaleDown),
      ),
    ),
  ],
),
Padding(
            padding: EdgeInsets.only(top: 12, bottom: 8),
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
      padding: EdgeInsets.all(3.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Excited'),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(3.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Proud'),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(3.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Lonely'),
      ),
    ),
  ],
),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Padding(
      padding: EdgeInsets.all(1),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Stressed'),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(1),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Tired'),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(1),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Annoyed'),
      ),
    ),
  ],
),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Padding(
      padding: EdgeInsets.all(1),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Happy'),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(1),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Angry'),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(1),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Joyful'),
      ),
    ),
  ],
),
Padding(
            padding: EdgeInsets.only(top: 12, bottom: 8),
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
  children: <Widget>[
    Expanded(
      child: Padding(
        padding: EdgeInsets.all(26.0),
        child: Image.asset('lib/images/edu.png', fit: BoxFit.scaleDown),
      ),
    ),
    Expanded(
      child: Padding(
        padding: EdgeInsets.all(26.0),
        child: Image.asset('lib/images/love.png', fit: BoxFit.scaleDown),
      ),
    ),
    Expanded(
      child: Padding(
        padding: EdgeInsets.all(26.0),
        child: Image.asset('lib/images/famliy.png', fit: BoxFit.scaleDown),
      ),
    ),
    Expanded( 
      child: Padding(
        padding: EdgeInsets.all(26.0),
        child: Image.asset('lib/images/health.png', fit: BoxFit.scaleDown),
      ),
    ),
  ],
),
Row(
  children: <Widget>[
    Expanded(
      child: Padding(
        padding: EdgeInsets.all(26.0),
        child: Image.asset('lib/images/personal.png', fit: BoxFit.scaleDown),
      ),
    ),
    Expanded(
      child: Padding(
        padding: EdgeInsets.all(26.0),
        child: Image.asset('lib/images/finance.png', fit: BoxFit.scaleDown),
      ),
    ),
    Expanded(
      child: Padding(
        padding: EdgeInsets.all(26.0),
        child: Image.asset('lib/images/famliy.png', fit: BoxFit.scaleDown),
      ),
    ),
    Expanded( 
      child: Padding(
        padding: EdgeInsets.all(26.0),
        child: Image.asset('lib/images/health.png', fit: BoxFit.scaleDown),
      ),
    ),
  ],
),
        ],
      ),
    ),
    )
    );
  }
}