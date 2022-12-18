// To parse this JSON data, do
//
//     final categorymodel = categorymodelFromJson(jsonString);

import 'dart:convert';

Categorymodel categorymodelFromJson(String str) =>
    Categorymodel.fromJson(json.decode(str));

String categorymodelToJson(Categorymodel data) => json.encode(data.toJson());

class Categorymodel {
  Categorymodel({
    required this.status,
    required this.message,
    required this.data,
  });

  String status;
  String message;
  List<Datacate> data;

  factory Categorymodel.fromJson(Map<String, dynamic> json) => Categorymodel(
        status: json["status"],
        message: json["message"],
        data:
            List<Datacate>.from(json["data"].map((x) => Datacate.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datacate {
  Datacate({
    required this.id,
    required this.name,
    required this.productType,
  });

  int id;
  String name;
  List<ProductType> productType;

  factory Datacate.fromJson(Map<String, dynamic> json) => Datacate(
        id: json["id"],
        name: json["name"],
        productType: List<ProductType>.from(
            json["product_type"].map((x) => ProductType.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "product_type": List<dynamic>.from(productType.map((x) => x.toJson())),
      };
}

class ProductType {
  ProductType({
    required this.id,
    required this.name,
    required this.categoryId,
    required this.providers,
    required this.image,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  int id;
  String name;
  int categoryId;
  String? providers;
  String image;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? deletedAt;

  factory ProductType.fromJson(Map<String, dynamic> json) => ProductType(
        id: json["id"],
        name: json["name"],
        categoryId: json["category_id"],
        providers: json["[providers"] == null ? null : json["providers"],
        image: json["image"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"] == null
            ? null
            : DateTime.parse(json["deleted_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "category_id": categoryId,
        "providers": providers == null ? null : providers,
        "image": image,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "deleted_at": deletedAt == null ? null : deletedAt!.toIso8601String(),
      };
}
