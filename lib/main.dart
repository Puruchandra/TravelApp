
import 'package:flutter/material.dart';
import 'package:travel_app/pages/TravelWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TravelWidget(title: ''),
    );
  }
}

