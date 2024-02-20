import 'package:flutter/material.dart';

class NewDiary extends StatefulWidget {
  const NewDiary({Key? key}) : super(key: key);

  @override
  _NewDiaryState createState() => _NewDiaryState();
}

class _NewDiaryState extends State<NewDiary> {
  String selectedButton = '';

  void recordEvent(String imagePath) {
    print('Image at $imagePath was tapped');
    // Add your logic for recording the event here
  }

  void handleButtonPress(String buttonText) {
    setState(() {
      selectedButton = buttonText;
    });
    print('Button $buttonText was pressed');
    // Add your logic for handling button presses here
  }

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
                  EmojiDisplay(recordEvent: recordEvent),
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
                          onPressed: () => handleButtonPress('Proud'),
                          style: ElevatedButton.styleFrom(
                            primary: selectedButton == 'Proud'
                                ? Colors.green // Change the color for the selected button
                                : null,
                          ),
                          child: const Text('Proud'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ElevatedButton(
                          onPressed: () => handleButtonPress('Lonely'),
                          style: ElevatedButton.styleFrom(
                            primary: selectedButton == 'Lonely'
                                ? Colors.green // Change the color for the selected button
                                : null,
                          ),
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
                          onPressed: () => handleButtonPress('Stressed'),
                          style: ElevatedButton.styleFrom(
                            primary: selectedButton == 'Stressed'
                                ? Colors.green // Change the color for the selected button
                                : null,
                          ),
                          child: const Text('Stressed'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3),
                        child: ElevatedButton(
                          onPressed: () => handleButtonPress('Tired'),
                          style: ElevatedButton.styleFrom(
                            primary: selectedButton == 'Tired'
                                ? Colors.green // Change the color for the selected button
                                : null,
                          ),
                          child: const Text('Tired'),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: ElevatedButton(
                      onPressed: () => handleButtonPress('Excited'),
                      style: ElevatedButton.styleFrom(
                        primary: selectedButton == 'Excited'
                            ? Colors.green // Change the color for the selected button
                            : null,
                      ),
                      child: const Text('Excited'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
