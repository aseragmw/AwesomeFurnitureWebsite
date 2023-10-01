import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants/routes.dart';
import 'navigation/nav_item.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Divider(),
        SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('AweomeFurniture'),
                SizedBox(
                  height: 40,
                ),
                Text('''53 El-Nozha st, Helopolis
Cairo,
Egypt''', style: TextStyle(color: Color(0xff9F9F9F))),
              ],
            ),
            SizedBox(
              width: 100,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Links',
                  style: TextStyle(color: Color(0xff9F9F9F)),
                ),
                SizedBox(
                  height: 40,
                ),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(HOMEROUTE);
                    },
                    child: NavBarItem(title: 'Home')),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(FURNITUREROUTE);
                    },
                    child: NavBarItem(title: 'Furniture')),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(FURNITUREROUTE);
                    },
                    child: NavBarItem(title: 'Antika')),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(CONTACTROUTE);
                    },
                    child: NavBarItem(title: 'Contact Us')),
              ],
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '© Ahmed Serag. All Rights reserved',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ],
    );
  }
}
