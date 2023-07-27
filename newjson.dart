import 'dart:convert';

void main() {
  String json = '''[
  {
    "name": "Анна",
    "surname": "Петрова",
    "year_of_birth": 1985,
    "geoposition": {
      "x": 48.8566,
      "y": 2.3522
    }
  },
  {
    "name": "Михаил",
    "surname": "Сидоров",
    "year_of_birth": null,
    "geoposition": {
      "x": 51.5074,
      "y": -0.1278
    }
  },
  {
    "name": "Елена",
    "surname": "Иванова",
    "year_of_birth": 2000,
    "geoposition": {
      "x": 35.6895,
      "y": 139.6917
    }
  }
]''';

  List<UserModel> users = List<Map<String, Object?>>.from(jsonDecode(json))
      .map(UserModel.fromJson)
      .toList();

  print(users[0].yearOfBirth);
  print(users[0].geoposition.y);
  print(users[2].surname);
}

class UserModel {
  final String name;
  final String surname;
  final int? yearOfBirth;
  final Geo geoposition;

  const UserModel({
    required this.name,
    required this.surname,
    required this.yearOfBirth,
    required this.geoposition,
  });

  factory UserModel.fromJson(Map<String, Object?> json) => UserModel(
        name: json['name'] as String,
        surname: json['surname'] as String,
        yearOfBirth: json['year_of_birth'] as int?,
        geoposition: Geo.fromJson(json['geoposition'] as Map<String, Object?>),
      );
}

class Geo {
  final double x;
  final double y;

  const Geo({
    required this.x,
    required this.y,
  });

  factory Geo.fromJson(Map<String, Object?> json) => Geo(
        x: json['x'] as double,
        y: json['y'] as double,
      );
}
