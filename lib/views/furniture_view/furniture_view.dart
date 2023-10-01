import 'package:awesome_furniture/constants/routes.dart';
import 'package:awesome_furniture/widgets/custom_product.dart';
import 'package:awesome_furniture/widgets/footer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/centered_view.dart';
import '../../widgets/navigation/nav_bar_desktop.dart';

class FurnitureView extends StatelessWidget {
  const FurnitureView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: CenteredView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const NavBarDesktop(),
            Image.asset(
              'assets/Group78.png',
              width: double.infinity,
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemCount: 12,
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(PRODUCTROUTE);
                    },
                    child: CustomProduct());
              },
            ),
            Footer()
          ],
        ),
      ),
    ));
  }
}
