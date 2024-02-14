import 'package:app/newDiary.dart';
import 'package:flutter/material.dart';

class SButton extends StatefulWidget {
  final VoidCallback onTap;

  SButton({required this.onTap});

  @override
  _SButtonState createState() => _SButtonState();
}

class _SButtonState extends State<SButton> {
  bool _isClicked = false;
  bool _isButtonDisabled = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (TapDownDetails details) {
        if (!_isButtonDisabled) {
          setState(() {
            _isClicked = true;
          });
        }
      },
     onTapUp: (TapUpDetails details) {
        if (!_isButtonDisabled) {
          setState(() {
            _isClicked = false;
            _isButtonDisabled = true;
          });

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewDiary()),
          );
        }
      },
      child: Container(
        width: 120,
        height: 50,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 204, 248, 245),
          borderRadius: BorderRadius.circular(25),
          boxShadow: _isClicked
              ? []
              : [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.add, color: const Color.fromARGB(255, 70, 66, 68)),
              SizedBox(width: 8),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onHover: (event) {},
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