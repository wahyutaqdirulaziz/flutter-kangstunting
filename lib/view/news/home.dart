import 'package:flutter/material.dart';
import 'package:kangsunting/view/news/layouts/customlist.dart';

class Homenews extends StatefulWidget {
  const Homenews({Key? key}) : super(key: key);

  @override
  _HomenewsState createState() => _HomenewsState();
}

class _HomenewsState extends State<Homenews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("INFORMASI"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Color.fromRGBO(247, 244, 74, 80),
                Color.fromRGBO(255, 255, 255, 100)
              ])),
        ),
      ),
      body: MyStatelessWidget(),
    );
  }
}
