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
      height: 20,
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
        body: PercentageBar(percentage: 0.5),
      ),
    ),
  );
}