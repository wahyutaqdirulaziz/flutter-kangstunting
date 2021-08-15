import 'package:flutter/material.dart';
import 'package:kangsunting/view/home/layouts/homeappbar.dart';
import 'package:kangsunting/view/home/layouts/info.dart';
import 'package:kangsunting/view/home/layouts/menu.dart';
import 'package:kangsunting/view/home/layouts/slider.dart';
import 'package:kangsunting/wiget/crousel.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.pink, Colors.amber])),
      child: Stack(
        children: [
          ListView(
            children: [HomeSlider(), HomeMenu(), HomeInfo()],
          ),
          HomeAppBar()
        ],
      ),
    ));
  }
}
