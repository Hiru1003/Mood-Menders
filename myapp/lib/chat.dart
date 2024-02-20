import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            '$name',
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.headlineMedium,
              color: const Color.fromARGB(255, 70, 66, 68),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        titleSpacing: 4.0,
        toolbarHeight: 70,
        toolbarOpacity: 0.9,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(18),
              bottomLeft: Radius.circular(18)),
        ),
      ),

      body: const Center(
        child: Text('Chat Page'),
      ),
    );
  }
}
