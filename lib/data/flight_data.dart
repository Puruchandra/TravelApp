class FlightData {
  String name;
  String offer;
  String price;

  FlightData({this.name,this.offer,this.price});
}

final flightList = [
  FlightData(name: 'Alitalia', price: '\$1400', offer: 'Upto 10% off'),
  FlightData(name: 'Air Taly', price: '\$1200', offer: 'Upto 20% off'),
  FlightData(name: 'Qatar Airways', price: '\$1100', offer: 'Upto 25% off'),
];