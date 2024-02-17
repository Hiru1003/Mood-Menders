import 'package:flutter/material.dart';

class Stat extends StatelessWidget {
  const Stat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stat'),
      ),
      body: const Center(
        child: Text('Stat Page'),
      ),
    );
  }
}