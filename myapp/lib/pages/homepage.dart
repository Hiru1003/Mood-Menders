import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moodmenders/Components/continuebutton.dart';
import 'package:moodmenders/pages/motivationalquotes.dart';
import 'package:moodmenders/pages/navigation.dart';
import 'package:moodmenders/pages/personalgrowthtips.dart';
import 'package:moodmenders/pages/relaxation.dart';
import 'package:moodmenders/pages/successstories.dart';

class home_page extends StatefulWidget{
  
    const home_page({super.key,});

  @override
  State<home_page> createState()  => _home_pageState();
}

class _home_pageState extends State<home_page>{

  @override

  Widget build(BuildContext context) {
  return Scaffold(
  backgroundColor: const Color.fromARGB(251, 237, 251, 223),
  body:SingleChildScrollView(
          
            child: Column(
              children: [Container(
                  padding: const EdgeInsets.all(0),
                  decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 183, 248, 188),
                  ),

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    const SizedBox(width: 16,),
                    Text(
                    'Welcome Back\nModayo !',
                    style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    color: const Color.fromARGB(255, 70, 66, 68),
                    fontSize: 22,
                    fontWeight: FontWeight.w500
                    ),
                  ),

                  
                  Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    Image.asset(
                    'lib/images/bg.png',
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
                  color: Color.fromARGB(255, 183, 248, 188),
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
                    fontWeight: FontWeight.w400
                    ),
                  ),
                  ],
                ),
              ),
              ),



              //frist box
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  decoration: const BoxDecoration(
                    color:  Color.fromARGB(255, 217, 235, 237),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16))
                    ),
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
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                        ),
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
                    color:  Color.fromARGB(255, 217, 235, 237),
                    ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [ 
                      Image.asset(
                      'lib/images/1.png',
                      height: 50,
                    ),
                    const SizedBox(width: 18,),
               
                    Image.asset(
                      'lib/images/2.png',
                      height: 50,
                    ),
                    const SizedBox(width: 18,),
               
                    Image.asset(
                      'lib/images/3.png',
                      height: 50,
                    ),
                    const SizedBox(width: 18,),
               
                    Image.asset(
                      'lib/images/4.png',
                      height: 50,
                    ),
                    const SizedBox(width: 18,),
               
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
                    color:  Color.fromARGB(255, 217, 235, 237),
                    ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         const SizedBox(height: 50,),
                      //message
                      Text(
                        'Start journalling with us?',
                        style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                        ),
                      ),
                      const SizedBox(height: 50,),
                      ],
                    ),
                ),
              ),
              
              //continue button
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  decoration: const BoxDecoration(
                    color:  Color.fromARGB(255, 217, 235, 237),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16)),
                    boxShadow: [
                    BoxShadow(
                    color: Color.fromARGB(255, 194, 207, 190),
                    blurRadius: 4,
                    offset: Offset(0, 6), // Shadow position
                    ),
                    ],
                    ),
                    
                    child: MyConButton(buttontext: 'Continue', onTap: (){{
                    Navigator.push(  
                    context,MaterialPageRoute(builder: (context) =>    (const navpage())),  
                  ); 
                }
              }
              ),
            ),
            ),


            //inspiration
            const SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  //message
                  Text(
                  'Inspirations',
                    style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    color: const Color.fromARGB(255, 70, 66, 68),
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10,),

            GestureDetector(
              onTap: () {
              Navigator.push(  
              context,MaterialPageRoute(builder: (context) =>   const motivationalquotes_page()),  
              ); 
              },
              child:Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                        decoration: const BoxDecoration(
                        color:  Color.fromARGB(255, 217, 235, 237),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                        
                        ),
                        child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          //message
                          Text(
                            '"Good things takes time"',
                            style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            color: const Color.fromARGB(255, 70, 66, 68),
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                            ),
                          ),
                          
                          ],
                        ),
                      ),
                    ),
                    ),
              
            ),
              


              Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      decoration: const BoxDecoration(
                        color:  Color.fromARGB(255, 217, 235, 237),
                        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16)),
                        boxShadow: [
                        BoxShadow(
                        color: Color.fromARGB(255, 194, 207, 190),
                        blurRadius: 4,
                        offset: Offset(0, 6), // Shadow position
                        ),
                        ],),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          //message
                          Text(
                            'Tap for more motivational quotes like this',
                            style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            color: const Color.fromARGB(255, 70, 66, 68),
                            fontSize: 14,
                            fontWeight: FontWeight.w200
                            ),
                          ),
                          
                          ],
                        ),
                      ),
                    ),
                  
                  ),
                
              

              const SizedBox(height: 30,),

              //two containers
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    GestureDetector(
                      onTap: () {
                      Navigator.push(  
                      context,MaterialPageRoute(builder: (context) =>   const successstories_page()),  
                      ); 
                      },
                      child: 
                    Container(
                      decoration: BoxDecoration(
                      color: const Color.fromARGB(251, 237, 251, 223),
                      border: Border.all(
                      color: const Color.fromARGB(255, 217, 235, 237),
                      width: 5,
                      ),
                      borderRadius: BorderRadius.circular(12)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          //message
                          Text(
                            'Success Stories',
                            style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            color: const Color.fromARGB(255, 70, 66, 68),
                            fontSize: 13,
                            fontWeight: FontWeight.w300
                            ),
                          ),
                          
                          ],
                        ),
                      ),
                    ),
                    ),

                    const SizedBox(width: 15,),
                    

                    GestureDetector(
                      onTap: () {
                      Navigator.push(  
                      context,MaterialPageRoute(builder: (context) =>   const personalgrowthtips_page()),  
                      ); 
                      },
                      child: Container(
                          decoration: BoxDecoration(
                          color: const Color.fromARGB(251, 237, 251, 223),
                          border: Border.all(
                          color: const Color.fromARGB(255, 217, 235, 237),
                          width: 5,
                          ),
                          borderRadius: BorderRadius.circular(12)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                              //message
                              Text(
                                'Personal Growth Tips',
                                style: GoogleFonts.poppins(
                                textStyle: Theme.of(context).textTheme.displayLarge,
                                color: const Color.fromARGB(255, 70, 66, 68),
                                fontSize: 13,
                                fontWeight: FontWeight.w300
                                ),
                              ),
                              
                              ],
                            ),
                          ),
                        ),
                      
                    ),
                
                  ],
                ),
              ),





              //relaxation box
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  decoration: const BoxDecoration(
                    color:  Color.fromARGB(255, 217, 235, 237),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16))
                    ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      //message
                      Text(
                        'Relaxation',
                        style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                        ),
                      ),
                      ],
                    ),
                  ),
                ),
              ),

              
                //paragraph
                Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  decoration: const BoxDecoration(
                    color:  Color.fromARGB(255, 217, 235, 237),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      //message
                      Text(
                        'Relaxing your mind with us with \ndifferent easy ways. We will guild \nyou to calm your self ',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 13,
                        fontWeight: FontWeight.w400
                        ),
                      ),
                      const SizedBox(height: 75,),
                      ],
                    ),
                ),
              ),
              

              //continue button
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  decoration: const BoxDecoration(
                    color:  Color.fromARGB(255, 217, 235, 237),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16)),
                    boxShadow: [
                    BoxShadow(
                    color: Color.fromARGB(255, 194, 207, 190),
                    blurRadius: 4,
                    offset: Offset(0, 6), // Shadow position
                    ),
                    ],
                    ),
                    child: MyConButton(buttontext: 'Continue', onTap: (){{
                    Navigator.push(  
                    context,MaterialPageRoute(builder: (context) =>    (const relaxation_page())),  
                  ); 
                }
              }
              ),
            ),
            ),

          

       const SizedBox(height: 30,),
       
              
  ])
  )
      
      
  );
  }
}