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
        borderRadius: BorderRadius.circular(16),
      ),
      child: FractionallySizedBox(
        widthFactor: percentage,
        child: Container(
          decoration: BoxDecoration(
            color: barColor,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 200,
            height: 20,
            child: PercentageBar(percentage: 0.5),
          ),
        ),
      ),
    ),
  );
}