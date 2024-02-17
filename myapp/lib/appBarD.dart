import 'package:app/myButton.dart';
import 'package:app/newDiary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(
          left: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top:20.0), 
                  child: Text(
                    'SECRET DIARY',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.headlineMedium,
                      color: const Color.fromARGB(255, 70, 66, 68),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0, top: 20.0),
                  child: SButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NewDiary()),
                      );
                    },
                  ),
                ),
              ],
            ),
            Image.asset(
              'lib/images/diary1.png',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
      titleSpacing: 4.0,
      toolbarHeight: 130,
      toolbarOpacity: 0.9,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(18),
            bottomLeft: Radius.circular(18)),
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      elevation: 0.00,
      backgroundColor: const Color.fromARGB(255, 134, 208, 203),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(130);
}