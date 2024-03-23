import 'package:app/name_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app/components/button.dart';

class Privacypage extends StatefulWidget {
  const Privacypage({
    Key? key,
  }) : super(key: key);

  @override
  State<Privacypage> createState() => _PrivacypageState();
}

class _PrivacypageState extends State<Privacypage> {
  bool agreedToPrivacyPolicy = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(251, 241, 255, 252),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            'lib/images/newbg.png',
                            height: 200,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Privacy and Security',
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    color: const Color.fromARGB(255, 70, 66, 68),
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  ' Mood Menders prioritizes user privacy and security, especially regarding sensitive mental health data. Our transparent Privacy Policy outlines data handling practices, including collection at registration and usage data for improved experiences. Strict security measures protect against unauthorized access, while anonymous chats foster safe, open discussions. Updates are communicated promptly, prioritizing user well-being.',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    color: const Color.fromARGB(255, 70, 66, 68),
                    fontSize: 16,
                    height: 1.3,
                    wordSpacing: 1.8,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                    value: agreedToPrivacyPolicy,
                    onChanged: (value) {
                      setState(() {
                        agreedToPrivacyPolicy = value!;
                      });
                    },
                  ),
                  Text(
                    'By signing up, you agree to our \nPrivacy Policy.',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      color: const Color.fromARGB(255, 70, 66, 68),
                      fontSize: 16,
                      height: 1.4,
                      wordSpacing: 1.8,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: MyButton(
                  buttontext: 'Continue',
                  onTap: agreedToPrivacyPolicy
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => name_page()),
                          );
                        }
                      : null,
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
