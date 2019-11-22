
import 'package:flutter/material.dart';
import 'package:travel_app/data/menu_data.dart';
import 'package:travel_app/tabs/Restaurants.dart';
import 'package:travel_app/tabs/cabs.dart';
import 'package:travel_app/tabs/flights.dart';
import 'package:travel_app/tabs/hotels.dart';
import 'package:travel_app/tabs/trains.dart';
import 'package:travel_app/widgets/content_card.dart';
import 'package:travel_app/widgets/menu_tab_bar.dart';
import '../data/card_content.dart';

class TravelWidget extends StatefulWidget {
  TravelWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TravelWidgetState createState() => _TravelWidgetState();
}

int selectedIndex = 0;

class _TravelWidgetState extends State<TravelWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.clear_all),
                        Icon(Icons.notifications),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Hi, Agnes',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            direction: Axis.horizontal,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xff4d49be),
                              ),
                              Text(
                                'Italy',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              )
                            ])
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "Welcome again!",
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: size.height * 0.25,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, i) => ContentCard(
                            size: size,
                            color: contents[i].color,
                            tag: contents[i].tag,
                            offer: contents[i].offer,
                            imgUrl: contents[i].imgUrl),
                        itemCount: contents.length,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'Services',
                      style: TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      height: size.height * 0.15,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, i) => GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = i;
                            });
                            menuData[i].enabled = !menuData[i].enabled;
                          },
                          child: MenuTabBar(
                            enabled: selectedIndex == i ? true : false,
                            size: size,
                            name: menuData[i].name,
                            icon: menuData[i].icon,
                          ),
                        ),
                        itemCount: menuData.length,
                      ),
                      // child: MenuTabBar(),
                    ),
                    _buildTab(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  _buildTab() {
    List tabs = [Flights(), Hotels(), Restaurant(), Trains(), Cabs()];

    return tabs[selectedIndex];
  }
}
