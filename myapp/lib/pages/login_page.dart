import 'package:flutter/material.dart';
import 'package:myapp/components/my_textfeild.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  // text controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              // logo
              Icon(
                Icons.person,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),

              const SizedBox(height: 25),
              // app name
              const Text(
                "M I N I M A L",
                style: TextStyle(fontSize: 20),
              ),

              const SizedBox(height: 50),

              // email textfeild
              MyTextField(
                hintText: "Email",
                obscureText: false,
                controller: emailController,
              ),

              const SizedBox(height: 10),

              // password textfeild
              MyTextField(
                hintText: "Password",
                obscureText: true,
                controller: passwordController,
              ),

              // forgot password

              // sign in button

              // don't have an account Register here
            ]),
          ),
        ));
  }
}
