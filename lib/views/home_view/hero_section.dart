import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import 'home_view.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({
    super.key,
    required this.heroContent,
    required this.backgroundImageUrl,
  });
  final HeroContent heroContent;
  final String backgroundImageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        Image.asset(
          backgroundImageUrl,
          width: 900,
          height: 600,
        ),
        Positioned(left: 380, top: 250, child: heroContent)
      ],
    ));
  }
}

class HeroContent extends StatelessWidget {
  const HeroContent(
      {super.key, required this.contentTitle, required this.sectionUrl});
  final String contentTitle;
  final String sectionUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      width: 500,
      decoration: BoxDecoration(color: secondaryColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New Arrival',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Discover Our $contentTitle Collection',
            style: TextStyle(
                color: primaryColor, fontSize: 30, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis.',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: () {
                try {
                  print('hey $sectionUrl');
                  Navigator.of(context).pushNamed(sectionUrl);
                } catch (e) {
                  print(e.toString());
                }
              },
              child: CallToAction(title: 'Buy Now')),
        ],
      ),
    );
  }
}
