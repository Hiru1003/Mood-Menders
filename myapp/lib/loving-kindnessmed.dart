import 'package:app/button.dart';
import 'package:app/meditaionmethods.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class lovekindmed_page extends StatefulWidget{
  
    const lovekindmed_page({
    super.key,});

  @override
  State<lovekindmed_page> createState()  => _lovekindmed_pageState();
}

class _lovekindmed_pageState extends State<lovekindmed_page>{

  @override
  Widget build(BuildContext context) {
  return Scaffold( 
    appBar: AppBar(
      title: Padding(
        padding: const EdgeInsets.only(left: 10,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        Text('LOVING-KINDNESS \nMEDITATION',style: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.displayLarge,
          color: const Color.fromARGB(255, 70, 66, 68),
          fontSize: 18,
          fontWeight: FontWeight.w400
          ), ),
          Image.asset('lib/images/bg.png',
          height: 72,)
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

              //description
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  decoration: const BoxDecoration(
                    color:  Color.fromARGB(255, 204, 248, 245),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16))
                    ),
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
                        fontWeight: FontWeight.w600
                        ),
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
                    color:  Color.fromARGB(255, 204, 248, 245),
                    ),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      //message
                      Text(
                        'Loving-kindness meditation, also known as Metta \nmeditation, is a practice that cultivates feelings \nof compassion, love, and goodwill towards \noneself and others.  ',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                        ),
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
                    color:  Color.fromARGB(255, 204, 248, 245),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16)),
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
                        fontWeight: FontWeight.w400
                        ),
                      ),
                      ],
                    ),
                  ),
                ),
                ),

                //preconsiderations

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
                    fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
            ),

          
              //one container
                Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  decoration: const BoxDecoration(
                    color:  Color.fromARGB(255, 204, 248, 245),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16))
                    ),
                  child: Padding(
                    padding:const EdgeInsets.only(left: 10, right: 10, top: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      //message
                      Text(
                        'Find a Quiet Space: ',
                        style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                        ),
                      ),
                      Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                      Image.asset(
                      'lib/images/6.png',
                      height: 45,
                    ),
                    ],
                    ),
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
                    color:  Color.fromARGB(255, 204, 248, 245),
                    ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      //message
                      Text(
                        'Begin by finding a quiet and comfortable place to \nsit or lie down. This could be a meditation cushion, \na chair, or any location where you feel at ease.',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                        ),
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
                    color:  Color.fromARGB(255, 204, 248, 245),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16)),
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
                        fontWeight: FontWeight.w400
                        ),
                      ),
                      ],
                    ),
                  ),
                  
                    
                
              ),
            ),
            
            //2nd
            const SizedBox(height: 15,),
            Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  decoration: const BoxDecoration(
                    color:  Color.fromARGB(255, 204, 248, 245),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16))
                    ),
                  child: Padding(
                    padding:const EdgeInsets.only(left: 10, right: 10, top: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      //message
                      Text(
                        'Relax and Focus:',
                        style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                        ),
                      ),
                      Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                      Image.asset(
                      'lib/images/6.png',
                      height: 45,
                    ),
                    ],
                    ),
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
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      //message
                      Text(
                        'Close your eyes and take a few deep breaths to \nrelax your body and clear your mind. Allow any \ntension or stress to dissolve.',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                        ),
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
                    color:  Color.fromARGB(255, 204, 248, 245),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16)),
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
                        fontWeight: FontWeight.w400
                        ),
                      ),
                      ],
                    ),
                  ),
                  
                    
                
              ),
            ),

              const SizedBox(height: 15,),
              //continue button
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: MyButton(buttontext: 'Start Meditation Now', onTap:(){{
                    Navigator.push(  
                    context,MaterialPageRoute(builder: (context) =>    (const meditaionmethods_page())),  
                  ); 
                }
              },)
            ),

            const SizedBox(height: 15,),
            



                ]
                )
                )
                );
                }
                }