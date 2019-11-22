class HotelData {
  String name;
  String price;
  String location;

  HotelData({this.name,this.location,this.price});
}

final hotelList = [
  HotelData(name: 'Hotel Delle Province', price: '\$60', location: 'Tiburtina'),
  HotelData(name: 'Grand Hotel Palace Rome', price: '\$85', location: 'Veneto'),
  HotelData(name: 'Hotel Raffaelo', price: '\$70', location: 'Colosseum'),
];