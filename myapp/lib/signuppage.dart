import 'package:app/components/MyTextField.dart';
import 'package:app/components/button.dart';
import 'package:app/helper_functions.dart';
import 'package:app/loginpage.dart';
import 'package:app/name_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class signup_page extends StatefulWidget {
  final void Function()? onTap;
  const signup_page({Key? key, required this.onTap});

  @override
  State<signup_page> createState() => _signup_pageState();
}

class _signup_pageState extends State<signup_page> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();

  late FirebaseAuth _auth;

  @override
  void initState() {
    super.initState();
    _auth = FirebaseAuth.instance;
  }

  //sign up user
  void signUp() async {
    // Check if the widget is still mounted
    if (!mounted) return;

    // Show loading circle
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    // Make sure password match
    if (passwordController.text != confirmpasswordController.text) {
      // Dismiss loading circle
      Navigator.pop(context);

      // Show error message
      displayMessageToUser("Passwords don't match!", context);
    } else {
      // Try creating the user
      try {
        UserCredential userCredential =
            await _auth.createUserWithEmailAndPassword(
                email: emailController.text, password: passwordController.text);

        // Dismiss loading circle
        Navigator.pop(context);

        // Navigate to login page
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => login_page(onTap: widget.onTap)),
        );
      } on FirebaseAuthException catch (e) {
        // Dismiss loading circle
        Navigator.pop(context);

        // Show error message
        displayMessageToUser(e.code, context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(251, 241, 255, 252),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //logo
                  const SizedBox(
                    height: 90,
                  ),
                  Image.asset(
                    'lib/images/leaf.png',
                    height: 70,
                  ),
                ],
              ),
              const SizedBox(
                height: 1,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //welcome back
                  Text(
                    'Sign up',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //email
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Email',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 6,
              ),
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //password
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Password',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //confirm password
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Confirm password',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              MyTextField(
                controller: confirmpasswordController,
                hintText: 'Confirm Password',
                obscureText: true,
              ),

              const SizedBox(
                height: 18,
              ),

              //button
              MyButton(
                buttontext: 'Sign Up',
                onTap: signUp,
              ),
              const SizedBox(
                height: 15,
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  //register now
                  Text(
                    'Already have an account?',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 14,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      'Log In',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const name_page()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    //password
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Skip for now',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
