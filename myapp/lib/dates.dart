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
            radius: 20,
            backgroundColor: Colors.blue,
            child: Text(
              date.day.toString(),
              style: TextStyle(color: Colors.white),
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