import 'package:flutter/material.dart';

class chat_page extends StatefulWidget{
  
    const chat_page ({
    super.key,});

  @override
  State<chat_page > createState()  => _chat_pageState();
}

class _chat_pageState extends State<chat_page >{


final nameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
  return const Scaffold( 
    backgroundColor: Color.fromARGB(251, 237, 251, 223),
      body: SingleChildScrollView(
      )
);
}
}