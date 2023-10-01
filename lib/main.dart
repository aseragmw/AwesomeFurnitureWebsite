import 'package:awesome_furniture/constants/routes.dart';
import 'package:awesome_furniture/views/furniture_view/furniture_view.dart';
import 'package:awesome_furniture/views/home_view/home_view.dart';
import 'package:awesome_furniture/views/product_view/product_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AwesomeFurniture',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins'
      ),
      initialRoute: HOMEROUTE,
      routes: {
        HOMEROUTE: (context) => HomeView(),
        FURNITUREROUTE: (context) => FurnitureView(),
        PRODUCTROUTE:(context) => ProductView()
        // ANTIKAROUTE:(context) => AntiView()
      },
    );
  }
}
