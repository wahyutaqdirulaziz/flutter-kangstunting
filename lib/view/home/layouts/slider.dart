import 'package:flutter/material.dart';
import 'package:kangsunting/wiget/crousel.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({Key? key}) : super(key: key);

  @override
  _HomeSliderState createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 80, right: 10, left: 10),
      child: Column(
        children: [
          SizedBox(
              height: 200.0,
              width: MediaQuery.of(context).size.width,
              child: Carousel(
                boxFit: BoxFit.fill,
                images: [
                  NetworkImage(
                      'http://sehatnegeriku.kemkes.go.id/wp-content/uploads/2018/04/IMG_20180407_112608.jpg'),
                  NetworkImage(
                      'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1604980389/hrrmlralhrs3pupenbfs.jpg'),
                  NetworkImage(
                      'https://cehate.com/wp-content/uploads/2020/03/cegah-stunting-copy1-1.jpg')
                ],
              )),
        ],
      ),
    );
  }
}
