// To parse this JSON data, do
//
//     final datacates = datacatesFromJson(jsonString);

import 'dart:convert';

Datacates datacatesFromJson(String str) => Datacates.fromJson(json.decode(str));

String datacatesToJson(Datacates data) => json.encode(data.toJson());

class Datacates {
  Datacates({
    this.status,
    this.message,
    this.data,
  });

  String? status;
  String? message;
  List<Datacat>? data;

  factory Datacates.fromJson(Map<String, dynamic> json) => Datacates(
        status: json["status"],
        message: json["message"],
        data: List<Datacat>.from(json["data"].map((x) => Datacat.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datacat {
  Datacat({
    this.id,
    this.name,
    this.productType,
  });

  int? id;
  String? name;
  List<ProductType>? productType;

  factory Datacat.fromJson(Map<String, dynamic> json) => Datacat(
        id: json["id"],
        name: json["name"],
        productType: json["product_type"] == null
            ? null
            : List<ProductType>.from(
                json["product_type"].map((x) => ProductType.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "product_type": productType == null
            ? null
            : List<dynamic>.from(productType!.map((x) => x.toJson())),
      };
}

class ProductType {
  ProductType({
    this.id,
    this.name,
    this.categoryId,
    this.providers,
    this.image,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  int? id;
  String? name;
  int? categoryId;
  dynamic? providers;
  String? image;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? deletedAt;

  factory ProductType.fromJson(Map<String, dynamic> json) => ProductType(
        id: json["id"],
        name: json["name"],
        categoryId: json["category_id"],
        providers: json["providers"],
        image: json["image"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: DateTime.parse(json["deleted_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "category_id": categoryId,
        "providers": providers,
        "image": image,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "deleted_at": deletedAt == null ? null : deletedAt!.toIso8601String(),
      };
}
