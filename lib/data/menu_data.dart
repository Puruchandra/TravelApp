import 'package:flutter/material.dart';

class MenuData {
  bool enabled;
  String name;
  IconData icon;
  MenuData({this.name, this.icon, this.enabled});
}

List menuData = [
  MenuData(name: 'Flights', icon: Icons.flight_takeoff, enabled: false),
  MenuData(name: 'Hotels', icon: Icons.hotel, enabled: false),
  MenuData(name: 'Restaurant', icon: Icons.fastfood, enabled: false),
  MenuData(name: 'Trains', icon: Icons.train, enabled: false),
  MenuData(name: 'Cabs', icon: Icons.local_taxi, enabled: false),
];
