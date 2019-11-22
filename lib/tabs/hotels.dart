
import 'package:flutter/material.dart';
import 'package:travel_app/data/hotel_data.dart';

class Hotels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            hotelList[0].name,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w800),
          ),
          subtitle: Text(hotelList[0].location),
          trailing: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            direction: Axis.horizontal,
            children: <Widget>[
              Text(
                hotelList[0].price,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        Divider(height: 1,),
        ListTile(
          title: Text(
            hotelList[1].name,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w800),
          ),
          subtitle: Text(hotelList[1].location),
          trailing: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            direction: Axis.horizontal,
            children: <Widget>[
              Text(
                hotelList[1].price,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        Divider(height: 1,),
        ListTile(
          title: Text(
            hotelList[2].name,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w800),
          ),
          subtitle: Text(hotelList[2].location),
          trailing: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            direction: Axis.horizontal,
            children: <Widget>[
              Text(
                hotelList[2].price,
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
