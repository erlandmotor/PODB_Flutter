// To parse this JSON data, do
//
//     final productmodel = productmodelFromJson(jsonString);

import 'dart:convert';

Productmodel productmodelFromJson(String str) =>
    Productmodel.fromJson(json.decode(str));

String productmodelToJson(Productmodel data) => json.encode(data.toJson());

class Productmodel {
  Productmodel({
    required this.status,
    required this.message,
    required this.data,
  });

  String status;
  String message;
  DataProduct data;

  factory Productmodel.fromJson(Map<String, dynamic> json) => Productmodel(
        status: json["status"],
        message: json["message"],
        data: DataProduct.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
      };
}

class DataProduct {
  DataProduct({
    required this.id,
    required this.name,
    required this.image,
    required this.products,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  int id;
  String name;
  String image;
  List<Product> products;
  DateTime createdAt;
  DateTime updatedAt;
  String? deletedAt;

  factory DataProduct.fromJson(Map<String, dynamic> json) => DataProduct(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        products: List<Product>.from(
            json["products"].map((x) => Product.fromJson(x))),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
      };
}

class Product {
  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.providerId,
    required this.stock,
    this.status,
    required this.totalPurchased,
    this.additionalInformation,
    required this.isAvailable,
    this.priceStatus,
    required this.isPromoActive,
    required this.discount,
    this.promoStartDate,
    this.promoEndDate,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  int id;
  String name;
  String description;
  int price;
  int providerId;
  int stock;
  String? status;
  int totalPurchased;
  String? additionalInformation;
  bool isAvailable;
  String? priceStatus;
  bool isPromoActive;
  int discount;
  String? promoStartDate;
  String? promoEndDate;
  DateTime createdAt;
  DateTime updatedAt;
  String? deletedAt;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        providerId: json["provider_id"],
        stock: json["stock"],
        status: json["status"],
        totalPurchased: json["total_purchased"],
        additionalInformation: json["additional_information"],
        isAvailable: json["is_available"],
        priceStatus: json["price_status"],
        isPromoActive: json["is_promo_active"],
        discount: json["discount"],
        promoStartDate: json["promo_start_date"],
        promoEndDate: json["promo_end_date"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "provider_id": providerId,
        "stock": stock,
        "status": status,
        "total_purchased": totalPurchased,
        "additional_information": additionalInformation,
        "is_available": isAvailable,
        "price_status": priceStatus,
        "is_promo_active": isPromoActive,
        "discount": discount,
        "promo_start_date": promoStartDate,
        "promo_end_date": promoEndDate,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
      };
}
