import 'dart:convert';

void main(List<String> args) {
  String json = '''[
  {
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {
        "lat": "-37.3159",
        "lng": "81.1496"
      }
    },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
    "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"
    }
  },
  {
    "id": 2,
    "name": "Ervin Howell",
    "username": "Antonette",
    "email": "Shanna@melissa.tv",
    "address": {
      "street": "Victor Plains",
      "suite": "Suite 879",
      "city": "Wisokyburgh",
      "zipcode": "90566-7771",
      "geo": {
        "lat": "-43.9509",
        "lng": "-34.4618"
      }
    },
    "phone": "010-692-6593 x09125",
    "website": "anastasia.net",
    "company": {
      "name": "Deckow-Crist",
      "catchPhrase": "Proactive didactic contingency",
      "bs": "synergize scalable supply-chains"
    }
  }]''';
  List<User> user = List<Map<String, Object?>>.from(jsonDecode(json))
      .map(User.fromJson)
      .toList();


  print(user[0].address.geo.lat);


  
}

class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final MyAddress address;
  final String phone;
  final String website;
  final MyComp company;

  const User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  factory User.fromJson(Map<String, Object?> json) => User(
        id: json['id'] as int,
        name: json['name'] as String,
        username: json['username'] as String,
        email: json['email'] as String,
        address: MyAddress.fromJson(json['address'] as Map<String, Object?>),
        phone: json['phone'] as String,
        website: json['website'] as String,
        company: MyComp.fromJson(json['company'] as Map<String, Object?>),
      );
}

class MyAddress {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final Geo geo;

  const MyAddress({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  factory MyAddress.fromJson(Map<String, Object?> json) => MyAddress(
        street: json['street'] as String,
        suite: json['suite'] as String,
        city: json['city'] as String,
        zipcode: json['zipcode'] as String,
        geo: Geo.fromJson(json['geo'] as Map<String, Object?>),
      );
}

class MyComp {
  final String name;
  final String catchPhrase;
  final String bs;

  const MyComp({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  factory MyComp.fromJson(Map<String, Object?> json) => MyComp(
        name: json['name'] as String,
        catchPhrase: json['catchPhrase'] as String,
        bs: json['bs'] as String,
      );
}

class Geo {
  final String lat;
  final String lng;

  const Geo({
    required this.lat,
    required this.lng,
  });

  factory Geo.fromJson(Map<String, Object?> json) => Geo(
        lat: json['lat'] as String,
        lng: json['lng'] as String,
      );
}
