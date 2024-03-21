import 'package:app/loginpage.dart';
import 'package:app/signuppage.dart';
import 'package:flutter/material.dart';

class loginOrRegister_page extends StatefulWidget {
  const loginOrRegister_page({
    super.key,
  });

  @override
  State<loginOrRegister_page> createState() => _loginorregister_pageState();
}

class _loginorregister_pageState extends State<loginOrRegister_page> {
  //initially shows login
  bool showLoginPage = true;

//toggle between login and register
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return signup_page(onTap: togglePages);
    } else {
      return login_page(onTap: togglePages);
    }
  }
}
