// To parse this JSON data, do
//
//     final users = usersFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Users> usersFromJson(String str) =>
    List<Users>.from(json.decode(str).map((x) => Users.fromJson(x)));

String usersToJson(List<Users> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Users {
  Users({
    required this.name,
  });

  String name;

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}
