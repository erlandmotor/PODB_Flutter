// To parse this JSON data, do
//
//     final profil = profilFromJson(jsonString);

import 'dart:convert';

class UpdateProfil {
    UpdateProfil({
        this.message,
        this.data,
    });

    final String? message;
    final Data? data;

    factory UpdateProfil.fromRawJson(String str) => UpdateProfil.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory UpdateProfil.fromJson(Map<String, dynamic> json) => UpdateProfil(
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "data": data == null ? null : data!.toJson(),
    };
}

class Data {
    Data({
        this.id,
        this.name,
        this.phoneNumber,
        this.email,
        this.password,
        this.image,
    });

    final int? id;
    final String? name;
    final String? phoneNumber;
    final String? email;
    final String? password;
    final String? image;

    factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        phoneNumber: json["phone_number"],
        email: json["email"],
        password: json["password"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone_number": phoneNumber,
        "email": email,
        "password": password,
        "image": image,
    };
}
