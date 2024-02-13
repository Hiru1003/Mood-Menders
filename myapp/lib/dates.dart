import 'package:flutter/material.dart';

class DatesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    List<Widget> dateWidgets = [];

    for (int i = 0; i < 7; i++) {
      DateTime date = today.add(Duration(days: i));
      dateWidgets.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: i == 0 ? 25 : 20, // Make the circle larger for today's date
            backgroundColor: Colors.blue,
            child: Text(
              date.day.toString(),
              style: TextStyle(
                color: Color.fromARGB(255, 14, 3, 3),
                fontWeight: i == 0 ? FontWeight.bold : FontWeight.normal, // Make the text bold for today's date
                fontSize: i == 0 ? 18 : 14, // Make the text larger for today's date
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