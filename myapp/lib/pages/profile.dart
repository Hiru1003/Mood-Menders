import 'package:flutter/material.dart';

class profile_page extends StatefulWidget {
  const profile_page({
    super.key,
  });

  @override
  State<profile_page> createState() => _profile_pageState();
}

class _profile_pageState extends State<profile_page> {
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromARGB(251, 237, 251, 223),
        body: SingleChildScrollView());
  }
}
