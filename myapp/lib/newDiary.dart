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

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('My App'),
    );
  }
}

class EmojiDisplay extends StatelessWidget {
  final Function(String) recordEvent;

  const EmojiDisplay({Key? key, required this.recordEvent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Implement your EmojiDisplay widget here
    return Container();
  }
}
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
      ],
    );
  }
}
