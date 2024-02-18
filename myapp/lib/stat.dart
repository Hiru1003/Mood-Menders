import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Stat extends StatefulWidget {
  const Stat({Key? key}) : super(key: key);

  @override
  _StatState createState() => _StatState();
}

class _StatState extends State<Stat> {
  DateTime now = DateTime.now();
  DateTime startOfWeek;

  @override
  void initState() {
    super.initState();
    startOfWeek = now.subtract(Duration(days: now.weekday - 1));
  }

  @override
  Widget build(BuildContext context) {
    String formattedStartOfWeek = DateFormat('MMM d').format(startOfWeek);
    String formattedToday = DateFormat('MMM d').format(now);

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
                      'TRACK \nYOUR MOODS',
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headlineMedium,
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              Image.asset(
                'lib/images/statMainpic.png',
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
      backgroundColor: const Color.fromARGB(251, 241, 255, 252),
      body: Container(
            width: double.infinity,
            height: 250,
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 204, 248, 245),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        now = now.subtract(Duration(days: 7));
                        startOfWeek = startOfWeek.subtract(Duration(days: 7));
                      });
                    },
                    child: Icon(Icons.arrow_left),
                  ),
                  Text(
                    '$formattedStartOfWeek - $formattedToday',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Icon(Icons.arrow_right),
                ],
              ),
            ),
      ),
    );
  }
}