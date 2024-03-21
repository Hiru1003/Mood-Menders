import 'package:flutter/material.dart';
import 'package:app/components/button.dart';
import 'package:app/welcomepage.dart';

class Namepage extends StatefulWidget {
  @override
  _NamepageState createState() => _NamepageState();
}

class _NamepageState extends State<Namepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(251, 241, 255, 252), // background color
      appBar: AppBar(
        backgroundColor: Colors.transparent, // app bar transparent
        elevation: 0, // Remove app bar shadow
        actions: [
          //  image
          Image.asset(
            'lib/images/leaf.png',
            height: 150,
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            // name
            Text(
              'What do your friends call you?',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 40,
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey, // border color
                  width: 1.0, // border width
                ),
                borderRadius: BorderRadius.circular(10), // border radius
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'calling name ',
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Add your button here
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: MyButton(
                buttontext: 'continue',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Welcomepage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
