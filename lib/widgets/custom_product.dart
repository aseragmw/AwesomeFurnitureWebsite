import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomProduct extends StatelessWidget {
  const CustomProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF4F5F7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/image2.png'),
          Text(
            'Leviosa',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Text('Stylish chair'),
          Text(
            '200 \$',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
