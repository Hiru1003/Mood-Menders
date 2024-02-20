import 'package:flutter/material.dart';

class ImageDisplay extends StatelessWidget {
  final Function recordEvent;

  ImageDisplay({required this.recordEvent});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                recordEvent('lib/images/loveearth (1).png');
              },
              child: Image.asset('lib/images/loveearth (1).png', fit: BoxFit.scaleDown),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                recordEvent('lib/images/loveearth (2).png');
              },
              child: Image.asset('lib/images/loveearth (2).png', fit: BoxFit.scaleDown),
            ),
          ),
        ),
        // ... Repeat for other images ...
      ],
    );
  }
}