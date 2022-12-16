// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

class Productda {
  Productda({
    this.status,
    this.message,
    this.data,
  });

  final String? status;
  final String? message;
  final Data? data;

  factory Productda.fromRawJson(String str) =>
      Productda.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Productda.fromJson(Map<String, dynamic> json) => Productda(
        status: json["status"] == null ? null : json["status"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "message": message == null ? null : message,
        "data": data == null ? null : data!.toJson(),
      };
}

class Data {
  Data({
    this.id,
    this.name,
    this.image,
    this.products,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  final int? id;
  final String? name;
  final String? image;
  final List<ProductElement>? products;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        image: json["image"] == null ? null : json["image"],
        products: json["products"] == null
            ? null
            : List<ProductElement>.from(
                json["products"].map((x) => ProductElement.fromJson(x))),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "image": image == null ? null : image,
        "products": products == null
            ? null
            : List<dynamic>.from(products!.map((x) => x.toJson())),
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "deleted_at": deletedAt == null ? null : deletedAt!.toIso8601String(),
      };
}

class ProductElement {
  ProductElement({
    this.id,
    this.name,
    this.description,
    this.price,
    this.providerId,
    this.stock,
    this.status,
    this.totalPurchased,
    this.additionalInformation,
    this.isAvailable,
    this.priceStatus,
    this.isPromoActive,
    this.discount,
    this.promoStartDate,
    this.promoEndDate,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  final int? id;
  final String? name;
  final String? description;
  final int? price;
  final int? providerId;
  final int? stock;
  final String? status;
  final int? totalPurchased;
  final String? additionalInformation;
  final bool? isAvailable;
  final String? priceStatus;
  final bool? isPromoActive;
  final int? discount;
  final String? promoStartDate;
  final String? promoEndDate;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;

  factory ProductElement.fromRawJson(String str) =>
      ProductElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductElement.fromJson(Map<String, dynamic> json) => ProductElement(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        description: json["description"] == null ? null : json["description"],
        price: json["price"] == null ? null : json["price"],
        providerId: json["provider_id"] == null ? null : json["provider_id"],
        stock: json["stock"] == null ? null : json["stock"],
        status: json["status"] == null ? null : json["status"],
        totalPurchased:
            json["total_purchased"] == null ? null : json["total_purchased"],
        additionalInformation: json["additional_information"] == null
            ? null
            : json["additional_information"],
        isAvailable: json["is_available"] == null ? null : json["is_available"],
        priceStatus: json["price_status"] == null ? null : json["price_status"],
        isPromoActive:
            json["is_promo_active"] == null ? null : json["is_promo_active"],
        discount: json["discount"] == null ? null : json["discount"],
        promoStartDate:
            json["promo_start_date"] == null ? null : json["promo_start_date"],
        promoEndDate:
            json["promo_end_date"] == null ? null : json["promo_end_date"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "description": description == null ? null : description,
        "price": price == null ? null : price,
        "provider_id": providerId == null ? null : providerId,
        "stock": stock == null ? null : stock,
        "status": status == null ? null : status,
        "total_purchased": totalPurchased == null ? null : totalPurchased,
        "additional_information":
            additionalInformation == null ? null : additionalInformation,
        "is_available": isAvailable == null ? null : isAvailable,
        "price_status": priceStatus == null ? null : priceStatus,
        "is_promo_active": isPromoActive == null ? null : isPromoActive,
        "discount": discount == null ? null : discount,
        "promo_start_date": promoStartDate == null ? null : promoStartDate,
        "promo_end_date": promoEndDate == null ? null : promoEndDate,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "deleted_at": deletedAt == null ? null : updatedAt!.toIso8601String(),
      };
}
