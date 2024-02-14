
import 'package:app/newDiary.dart' as newDiary;
import 'package:app/todaysdate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app/myButton.dart' as myButton;
import 'package:app/dates.dart';
import 'package:app/navigationBar.dart';
import 'package:intl/intl.dart';

class Diary extends StatelessWidget {
  const Diary({super.key});

  get bottomNavigationBar => null;
  
 
  // get myButton => null;

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
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                Padding(
  padding: const EdgeInsets.only(right: 36, top: 16),
  child: myButton.SButton(
    onTap: (){
      Get.to(newDiary.NewDiary());
    },
  ),
) , 

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
      backgroundColor: const Color.fromARGB(251, 241, 255, 252),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            Container(color: Colors.white),
            const Row(
              children: <Widget>[],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            const Row(
              children: <Widget>[],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0), // Adjust the padding as needed
                  child: TodayDateWidget(),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Text(
                    'Today',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            DatesWidget(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: 300,
                height: 0.5, 
              color: const Color.fromARGB(255, 70, 66, 68),
            ),
            Container(
              width: 370,
              height: 172.0, // replace with your desired height
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 204, 248, 245),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start, 
                        children: <Widget>[
                          Image.asset(
                            'lib/images/loveearth (1).png',
                            width: 60,
                            height: 60,
                          ),
                          SizedBox(width: 10), 
                          Padding(
                            padding: EdgeInsets.only(top: 10), 
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Happy',
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  '${DateFormat('d MMMM yyyy, h:mm a').format(DateTime.now())}',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset(
                          'lib/images/love 1.png', // Replace with your image path
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10), // Set your desired padding value
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'I got stickers from FOSS',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et est leo.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 370,
              height: 172.0, // replace with your desired height
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 204, 248, 245),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start, 
                        children: <Widget>[
                          Image.asset(
                            'lib/images/loveearth (1).png',
                            width: 60,
                            height: 60,
                          ),
                          SizedBox(width: 10), 
                          Padding(
                            padding: EdgeInsets.only(top: 10), 
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Happy',
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  '${DateFormat('d MMMM yyyy, h:mm a').format(DateTime.now())}',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset(
                          'lib/images/love 1.png', // Replace with your image path
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10), // Set your desired padding value
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'I got stickers from FOSS',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et est leo.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //bottomNavigationBar: CustomNavigationBar(),
          ],
        ),
      ),
    );
  }
}