import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
Widget imageCarousel = Container(
  height: 200.0,
  child: Carousel(
    boxFit: BoxFit.cover,
    dotColor: Colors.white,
    dotSize: 3.0,
    indicatorBgPadding: 3.0,
    images: [
      Image.asset('images/Best-Shopping-in-Tel-Aviv.jpg'),
      Image.asset('images/holiday-shopping1.jpg'),
      Image.asset('images/Norwegian_Reward_Shopping_pixabay_940x600.jpg'),
      Image.asset('images/pretty-girls-exploring-shops-mall_23-2147669973.jpg'),
      Image.asset('images/Shopping-660x440.jpg'),
      Image.asset('images/TFS_Article_2019_970x643.jpg'),
    ],
    autoplay: true,
    animationCurve: Curves.fastOutSlowIn,
    animationDuration: Duration(milliseconds: 1000),
  ),
);
