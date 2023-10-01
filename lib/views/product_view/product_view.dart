import 'package:awesome_furniture/constants/app_colors.dart';
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/image2.png',
                          width: 70,
                          height: 70,
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Image.asset(
                          'assets/image2.png',
                          width: 70,
                          height: 70,
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Image.asset(
                          'assets/image2.png',
                          width: 70,
                          height: 70,
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Image.asset(
                          'assets/image2.png',
                          width: 70,
                          height: 70,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/image2.png',
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                SizedBox(
                  width: 1000,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Fancy Chair',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '200 \$',
                        style:
                            TextStyle(fontSize: 30, color: Color(0xff9F9F9F)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Setting the bar as one of the loudest speakers in its class, the Kilburn is a compact, stout-hearted hero with a well-balanced audio which boasts a clear midrange and extended highs for a sound.',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          ItemCountButton(),
                          SizedBox(
                            width: 10,
                          ),
                          AddToCartButton(),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Divider(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Description',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '''Embodying the raw, wayward spirit of rock n roll, the Kilburn portable active stereo speaker takes the unmistakable look and sound of Marshall, unplugs the chords, and takes the show on the road.
                
Weighing in under 7 pounds, the Kilburn is a lightweight piece of vintage styled engineering. Setting the bar as one of the loudest speakers in its class, the Kilburn is a compact, stout-hearted hero with a well-balanced audio which boasts a clear midrange and extended highs for a sound that is both articulate and pronounced. The analogue knobs allow you to fine tune the controls to your personal preferences while the guitar-influenced leather strap enables easy and stylish travel.''',
                  style: TextStyle(color: Color(0xff9F9F9F)),
                ),
                SizedBox(
                  height: 500,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Image.asset(
                          'assets/Group107.png',
                          width: 500,
                        ),
                      );
                    },
                    itemCount: 2,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),
            Divider(),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Related Products',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ),
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
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(FURNITUREROUTE);
                  },
                  child: Container(
                    width: 200,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: primaryColor),
                      // borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Center(child: Text('SHOW MORE')),
                  ),
                )
              ],
            ),
            Footer()
          ],
        )),
      ),
    );
  }
}

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 200,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.black)),
        child: Center(
          child: Text('Add To Cart'),
        ),
      ),
    );
  }
}

class ItemCountButton extends StatefulWidget {
  const ItemCountButton({super.key});

  @override
  State<ItemCountButton> createState() => _ItemCountButtonState();
}

class _ItemCountButtonState extends State<ItemCountButton> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.black)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  if (_count > 0) {
                    setState(() {
                      _count--;
                    });
                  }
                },
                icon: Text(
                  '-',
                  style: TextStyle(fontSize: 30),
                )),
            Text(_count.toString()),
            IconButton(
                onPressed: () {
                  setState(() {
                    _count++;
                  });
                },
                icon: Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
