import 'package:flutter/cupertino.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
    );
  }
}
