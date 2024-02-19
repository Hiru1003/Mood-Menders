import 'package:flutter/material.dart';

class DatesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    final controller = ScrollController(initialScrollOffset: 3 * 60.0); // Scroll to the middle of the week

    return Container(
      height: 100, // Increase the height to accommodate the bigger current day
      child: ListView.builder(
        controller: controller,
        scrollDirection: Axis.horizontal,
        itemCount: 7, // Only show the current week
        itemBuilder: (context, index) {
          DateTime date = today.add(Duration(days: index - 3)); // Adjust the date to start from the beginning of the week
          bool isToday = date.day == today.day && date.month == today.month && date.year == today.year;

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: isToday ? 35 : 20, // Increase the radius for the current day
              backgroundColor: const Color.fromARGB(255, 154, 191, 188),
              child: Text(
                date.day.toString(),
                style: TextStyle(
                  color: const Color.fromARGB(255, 14, 3, 3),
                  fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
                  fontSize: isToday ? 24 : 14, // Increase the font size for the current day
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}