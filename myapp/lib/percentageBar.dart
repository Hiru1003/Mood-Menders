
import 'package:flutter/material.dart';

class PercentageBar extends StatelessWidget {
  final double percentage;

  PercentageBar({this.percentage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(5),
      ),
      child: FractionallySizedBox(
        alignment: Alignment.centerLeft,
        widthFactor: percentage,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
```