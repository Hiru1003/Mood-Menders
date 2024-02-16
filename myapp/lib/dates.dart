import 'package:flutter/material.dart';

class DatesWidget extends StatelessWidget {
  const DatesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    List<Widget> dateWidgets = [];

    for (int i = -3; i <= 3; i++) {
      DateTime date = today.add(Duration(days: i));
      dateWidgets.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: i == 0 ? 25 : 20, 
            backgroundColor: const Color.fromARGB(255, 154, 191, 188),
            child: Text(
              date.day.toString(),
              style: TextStyle(
                color: const Color.fromARGB(255, 14, 3, 3),
                fontWeight: i == 0 ? FontWeight.bold : FontWeight.normal, 
                fontSize: i == 0 ? 18 : 14, 
              ),
            ),
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: dateWidgets,
    );
  }
}