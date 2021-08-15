import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            Color.fromRGBO(247, 244, 74, 80),
            Color.fromRGBO(255, 255, 255, 100)
          ])),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Text(
                  "Kang Stunting",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                ),
                Text(
                  "Aplikasi Edukasi Stunting",
                  style: TextStyle(fontSize: 10, color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
