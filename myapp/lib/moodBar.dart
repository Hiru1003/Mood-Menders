import 'package:flutter/material.dart';

class MoodImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildRow('lib/images/loveearth (1).png', 0.2),
        buildRow('lib/images/loveearth (2).png', 0.4),
        buildRow('lib/images/loveearth (3).png', 0.3),
        buildRow('lib/images/loveearth (4).png', 0.6),
        buildRow('lib/images/loveearth (5).png', 0.8),
      ],
    );
  }
  
  buildRow(String s, double d) {}
}