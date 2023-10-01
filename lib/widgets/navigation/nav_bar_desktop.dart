import 'package:awesome_furniture/constants/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'nav_item.dart';

class NavBarDesktop extends StatelessWidget {
  const NavBarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(HOMEROUTE);
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/MeubelHouse_Logos-05.png'),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'AwesomeFurniture',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(HOMEROUTE);
                  },
                  child: NavBarItem(title: 'Home')),
              const SizedBox(
                width: 100,
              ),
              InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(FURNITUREROUTE);
                  },
                  child: NavBarItem(title: 'Furniture')),
              const SizedBox(
                width: 100,
              ),
              InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(FURNITUREROUTE);
                  },
                  child: NavBarItem(title: 'Antika')),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: Icon(Icons.person_2_rounded),
              ),
              SizedBox(
                width: 30,
              ),
              InkWell(
                onTap: () {},
                child: Icon(Icons.shopping_cart),
              ),
            ],
          )
        ],
      ),
    );
  }
}
