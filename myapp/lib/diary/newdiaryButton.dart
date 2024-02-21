import 'package:flutter/material.dart';

class EmotionButton extends StatefulWidget {
  final String buttonText;

  EmotionButton(String s, {required this.buttonText});

  @override
  _EmotionButtonState createState() => _EmotionButtonState();
}

class _EmotionButtonState extends State<EmotionButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: _isPressed ? const Color.fromARGB(255, 120, 221, 210) : null, // Change the color when button is pressed
          foregroundColor: const Color.fromARGB(255, 61, 61, 61), // Change the text color to black
        ),
        onPressed: () {
          setState(() {
            _isPressed = !_isPressed;
          });
        },
        child: Text(widget.buttonText),
      ),
    );
  }
}