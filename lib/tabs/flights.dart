
import 'package:flutter/material.dart';
import 'package:travel_app/data/flight_data.dart';

class Flights extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            flightList[0].name,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w800),
          ),
          subtitle: Text(flightList[0].offer),
          trailing: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            direction: Axis.horizontal,
            children: <Widget>[
              Text(
                flightList[0].price,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        ListTile(
          title: Text(
            flightList[1].name,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w800),
          ),
          subtitle: Text(flightList[1].offer),
          trailing: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            direction: Axis.horizontal,
            children: <Widget>[
              Text(
                flightList[1].price,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        ListTile(
          title: Text(
            flightList[2].name,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w800),
          ),
          subtitle: Text(flightList[2].offer),
          trailing: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            direction: Axis.horizontal,
            children: <Widget>[
              Text(
                flightList[2].price,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ],
    );
  }
}
