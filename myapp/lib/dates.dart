// import 'package:flutter/material.dart';

// class DatesWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     DateTime today = DateTime.now();

//     return ListView.builder(
//       scrollDirection: Axis.horizontal,
//       itemCount: 1000,
//       itemBuilder: (context, index) {
//         DateTime date = today.add(Duration(days: index - 500)); 
//         bool isToday = date.day == today.day && date.month == today.month && date.year == today.year;

//         return Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: CircleAvatar(
//             radius: isToday ? 25 : 20,
//             backgroundColor: const Color.fromARGB(255, 154, 191, 188),
//             child: Text(
//               date.day.toString(),
//               style: TextStyle(
//                 color: const Color.fromARGB(255, 14, 3, 3),
//                 fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
//                 fontSize: isToday ? 18 : 14,
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }