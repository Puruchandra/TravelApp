import 'dart:ui';

import 'package:flutter/material.dart';

class CardContent {
  Color color;
  String imgUrl;
  String tag;
  String offer;

  CardContent({this.imgUrl, this.color, this.tag, this.offer});
}

List contents = [
  CardContent(
      color: Color(0xffCB4BA8),
      tag: 'Book flights',
      offer: 'Save more than 40% on internationl flights',
      imgUrl:
          'https://cdn.thecrazytourist.com/wp-content/uploads/2017/08/Grand-Canal-770x430.jpg'),
  CardContent(
      color: Color(0xff1F1585),
      tag: 'Book Hotel',
      offer: 'Upto 50% off on luxury hotel',
      imgUrl:
          'https://media-api.xogrp.com/images/9a506749-95e9-47cf-857e-5374f2205b93~rs_768.h'),
  CardContent(
      color: Color(0xffFF5B1E),
      tag: 'Delicious',
      offer: 'Save upto 50% on your favourite food',
      imgUrl:
          'https://ciao.citalia.com/wp-content/uploads/sites/6/2014/07/pasta-alla-norma.jpg'),
];
