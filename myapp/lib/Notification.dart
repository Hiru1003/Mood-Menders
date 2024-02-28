import 'package:app/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: NotificationSettingsPage(),
  ));
}

class NotificationSettingsPage extends StatefulWidget {
  @override
  _NotificationSettingsPageState createState() =>
      _NotificationSettingsPageState();
}

class _NotificationSettingsPageState extends State<NotificationSettingsPage> {
  // Controllers for managing notification preferences
  final TextEditingController messageController = TextEditingController();
  final TextEditingController pushNotificationController =
      TextEditingController();
  final TextEditingController ReminderController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Notification ',
                style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    color: const Color.fromARGB(255, 70, 66, 68),
                    fontSize: 19,
                    fontWeight: FontWeight.w500),
              ),
              Image.asset(
                'lib/images/leaf.png',
                height: 72,
              )
            ],
          ),
        ),
        titleSpacing: 4.0,
        toolbarHeight: 65,
        toolbarOpacity: 0.9,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(18),
              bottomLeft: Radius.circular(18)),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        elevation: 0.00,
        backgroundColor: const Color.fromARGB(255, 134, 208, 203),
      ),
      backgroundColor: const Color.fromRGBO(255, 252, 245, 1),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            _buildNotificationSetting(
              'Pop up Messages',
              messageController,
            ),
            const SizedBox(height: 5),
            _buildNotificationSetting(
              'In-app Notifications',
              pushNotificationController,
            ),
            const SizedBox(height: 5),
            _buildNotificationSetting(
              'Daily Reminder',
              ReminderController,
            ),
            const SizedBox(height: 5),
            _buildNotificationSetting(
              'Email Controller',
              emailController,
            ),
            const SizedBox(height: 20),
            MyButton(
                buttontext: 'Save Preferances',
                onTap: () {
                  _saveNotificationPreferences();
                })
          ],
        ),
      ),
    );
  }
