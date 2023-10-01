import 'package:awesome_furniture/constants/routes.dart';
import 'package:awesome_furniture/widgets/custom_product.dart';
import 'package:awesome_furniture/widgets/footer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/centered_view.dart';
import '../../widgets/navigation/nav_bar_desktop.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: CenteredView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const NavBarDesktop(),
            Image.asset(
              'assets/Rectangle1.png',
              width: double.infinity,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Get In Touch With Us',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'For More Information About Our Product & Services. Please Feel Free To Drop Us An Email. Our Staff Always Be There To Help You Out. Do Not Hesitate!',
              style: TextStyle(color: Color(0xff9F9F9F)),
            ),

            SizedBox(
              height: 50,
            ),
            ContactItem(
              icon: Icons.location_on,
              text: '236 5th SE Avenue, New York NY10000, United States',
            ),
            SizedBox(
              height: 20,
            ),
            ContactItem(
              icon: Icons.phone,
              text: '''Mobile: +(84) 546-6789
Hotline: +(84) 456-6789''',
            ),
            SizedBox(
              height: 20,
            ),
            ContactItem(
              icon: Icons.timelapse,
              text: '''Monday-Friday: 9:00 - 22:00
Saturday-Sunday: 9:00 - 21:00''',
            ),

            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [ ],
            // ),
            Footer()
          ],
        ),
      ),
    ));
  }
}

class ContactItem extends StatelessWidget {
  const ContactItem({super.key, this.text, required this.icon});
  final IconData icon;
  final text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon),
          SizedBox(
            width: 50,
          ),
          Text(text)
        ],
      ),
    );
  }
}
