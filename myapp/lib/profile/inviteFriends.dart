import 'package:app/main.dart';
import 'package:app/profile/button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InviteFriends extends StatefulWidget {
  @override
  _InviteFriendsState createState() => _InviteFriendsState();
}

class _InviteFriendsState extends State<InviteFriends> {
  final _formKey = GlobalKey<FormState>();
  String _friendEmail = '';

  void _submit() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      final Uri emailLaunchUri = Uri(
        scheme: 'mailto',
        path: _friendEmail,
        queryParameters: {
          'subject': 'Invitation to join',
          'body': 'Hey, I would like to invite you to join...',
        },
      );

      try {
        if (await canLaunch(emailLaunchUri.toString())) {
          await launch(emailLaunchUri.toString());
        } else {
          throw 'Could not launch $emailLaunchUri';
        }
      } catch (e) {
        print('Error launching URL: $e');
        // Handle error appropriately, e.g., show error message to the user
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invite Friends'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Theme(
          data: Theme.of(context).copyWith(
            cardColor: Colors.blue,
            inputDecorationTheme: InputDecorationTheme(
              labelStyle: TextStyle(color: Colors.blue),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                    labelText: 'Friend\'s Email',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your friend\'s email';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _friendEmail = value!;
                  },
                ),
                SizedBox(height: 32),
                Button(
                  buttonText: 'Submit',
                  onPressed: _submit,
                  color: 'orange',
                  enableIcon: false,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
