import 'package:flutter/material.dart';

class MenuTabBar extends StatelessWidget {
  final Size size;
  final bool enabled;
  final IconData icon;
  final String name;
  MenuTabBar({this.enabled, this.size, this.icon, this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: enabled ? Color(0xff4d49be) : Color(0xffF6F7FA),
          ),
          child: Icon(
            icon,
            color: enabled ? Colors.white : Color(0xff82819C),
            size: 30.0,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0), child: Text(name))
      ],
    );
  }

  bool get isSelected => !isSelected;
}
