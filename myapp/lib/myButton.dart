import 'package:flutter/material.dart';

class SButton extends StatefulWidget {
  final VoidCallback onPressed;
  SButton({required this.onPressed});

  @override
  _SButtonState createState() => _SButtonState();
}

class _SButtonState extends State<SButton> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (TapDownDetails details) {
        setState(() {
          _isClicked = true;
        });
      },
      onTapUp: (TapUpDetails details) {
        setState(() {
          _isClicked = false;
        });
        widget.onPressed();
      },
      child: Container(
        width: 120, // Adjust the width as needed
        height: 50, // Adjust the height as needed
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 204, 248, 245),
          borderRadius: BorderRadius.circular(25), // Add this line to make the edges curved
          boxShadow: _isClicked
              ? []
              : [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0), // Add padding
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, // Center the children
            children: <Widget>[
              Icon(Icons.add, color: const Color.fromARGB(255, 70, 66, 68),),
              SizedBox(width: 8), // Add some space between the icon and the text
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onHover: (event) {
                  // Change the color or do something when hovered
                },
                child: Text(
                  'New',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 70, 66, 68),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}