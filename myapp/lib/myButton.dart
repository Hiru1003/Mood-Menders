import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
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
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: _isClicked
              ? []
              : [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
        ),
        child: Row(
          children: <Widget>[
            Icon(Icons.add, color: const Color.fromARGB(255, 70, 66, 68),),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              onHover: (event) {
                // Change the color or do something when hovered
              },
              child: Text.rich(
                TextSpan(
                  text: 'New',
                  style: TextStyle(
                    fontSize: 16,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 2
                      ..color = const Color.fromARGB(255, 70, 66, 68),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'New',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}