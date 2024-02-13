// Filename: today_date_widget.dart

import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // you need to add intl package in your pubspec.yaml file

class TodayDateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd').format(now);

    return Text(
      'Today\'s date: $formattedDate',
      style: TextStyle(fontSize: 20),
    );
  }
}