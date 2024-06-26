import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final String text;
  final bool isNewMessage;
  final void Function()? onTap;

  const UserTile({
    Key? key,
    required this.text,
    required this.isNewMessage,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isNewMessage ? Colors.blue : const Color.fromARGB(200, 134, 208, 203),
          borderRadius: BorderRadius.circular(24),
        ),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            // Icon
            Image.asset(
              'lib/images/loveearth (1).png',
              height: 36,
            ),
            const SizedBox(width: 20),
            // Username
            Text(
              text,
              style: TextStyle(
                fontWeight: isNewMessage ? FontWeight.bold : FontWeight.normal,
                color: isNewMessage ? Colors.white : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}