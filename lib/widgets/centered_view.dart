import 'package:flutter/cupertino.dart';

class CenteredView extends StatelessWidget {
  const CenteredView({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: child,
    );
  }
}