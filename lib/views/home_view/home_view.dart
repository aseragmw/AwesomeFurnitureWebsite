import 'package:awesome_furniture/constants/app_colors.dart';
import 'package:awesome_furniture/constants/routes.dart';
import 'package:awesome_furniture/widgets/footer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/centered_view.dart';
import '../../widgets/navigation/nav_bar_desktop.dart';
import 'hero_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: CenteredView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const NavBarDesktop(),
            HeroSection(
                heroContent: HeroContent(
                    sectionUrl: FURNITUREROUTE, contentTitle: 'FURNITURE'),
                backgroundImageUrl:
                    'assets/scandinavian-interior-mockup-wall-decal-background1.png'),
            HeroSection(
                heroContent: HeroContent(
                    sectionUrl: FURNITUREROUTE, contentTitle: 'ANTIKA'),
                backgroundImageUrl:
                    'assets/old-fashioned-camera-leather-suitcase-wooden-table-generative-ai.jpg'),
            Footer()
          ],
        ),
      ),
    ));
  }
}

class CallToAction extends StatelessWidget {
  const CallToAction({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 70,
      decoration: BoxDecoration(color: primaryColor),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
