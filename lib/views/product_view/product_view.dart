import 'package:awesome_furniture/constants/routes.dart';
import 'package:awesome_furniture/views/home_view/home_view.dart';
import 'package:awesome_furniture/widgets/centered_view.dart';
import 'package:awesome_furniture/widgets/custom_product.dart';
import 'package:awesome_furniture/widgets/footer.dart';
import 'package:awesome_furniture/widgets/navigation/nav_bar_desktop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: CenteredView(
            child: Column(
          children: [
            const NavBarDesktop(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/image2.png',
                ),
                SizedBox(
                  width: 1000,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fancy Chair',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '200 \$',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Setting the bar as one of the loudest speakers in its class, the Kilburn is a compact, stout-hearted hero with a well-balanced audio which boasts a clear midrange and extended highs for a sound.',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      CallToAction(title: 'Add To Cart'),
                    ],
                  ),
                )
              ],
            ),
            Divider(),
            Column(
              children: [
                Text('Related Products'),
                SizedBox(
                  // width: 700,
                  height: 500,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(PRODUCTROUTE);
                          },
                          child: CustomProduct());
                    },
                    itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),
            Footer()
          ],
        )),
      ),
    );
  }
}
