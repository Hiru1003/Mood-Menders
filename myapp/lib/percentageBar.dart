import 'package:flutter/material.dart';

class PercentageBar extends StatelessWidget {
  final double percentage;
  final Color barColor;
  final Color backgroundColor;

  const PercentageBar({
    Key? key,
    required this.percentage,
    this.barColor = Colors.blue,
    this.backgroundColor = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: FractionallySizedBox(
        widthFactor: percentage,
        child: Container(
          decoration: BoxDecoration(
            color: barColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 200, // adjust the width as needed
            height: 50, // adjust the height as needed
            child: PercentageBar(percentage: 0.5), // 50% of the total width
          ),
        ),
      ),
    ),
  );
}