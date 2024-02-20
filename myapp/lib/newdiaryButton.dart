import 'package:flutter/material.dart';

class ExcitedButton extends StatefulWidget {
  @override
  _ExcitedButtonState createState() => _ExcitedButtonState();
}

class _ExcitedButtonState extends State<ExcitedButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: _isPressed ? Color.teal(400) : null, // Change the color when button is pressed
        ),
        onPressed: () {
          setState(() {
            _isPressed = !_isPressed;
          });
        },
        child: const Text('Excited'),
      ),
    );
  }
}