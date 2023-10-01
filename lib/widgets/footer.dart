import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Divider(
          height: 3,
          color: Colors.black,
        ),
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
    );
  }
}
