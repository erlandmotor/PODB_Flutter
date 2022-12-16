// To parse this JSON data, do
//
//     final riwayatData = riwayatDataFromJson(jsonString);

import 'dart:convert';

class RiwayatData {
    RiwayatData({
        this.status,
        this.message,
        this.data,
    });

    final String? status;
    final String? message;
    final List<Datum>? data;

    factory RiwayatData.fromRawJson(String str) => RiwayatData.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory RiwayatData.fromJson(Map<String, dynamic> json) => RiwayatData(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data == null ? null : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        this.id,
        this.productName,
        this.userEmail,
        this.productPrice,
        this.discount,
        this.adminFee,
        this.totalPrice,
        this.transactionDate,
    });

    final int? id;
    final String? productName;
    final String? userEmail;
    final int? productPrice;
    final int? discount;
    final int? adminFee;
    final int? totalPrice;
    final DateTime? transactionDate;

    factory Datum.fromRawJson(String str) => Datum.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        productName: json["product_name"],
        userEmail: json["user_email"],
        productPrice: json["product_price"],
        discount: json["discount"],
        adminFee: json["admin_fee"],
        totalPrice: json["total_price"],
        transactionDate: json["transaction_date"] == null ? null : DateTime.parse(json["transaction_date"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "product_name": productName,
        "user_email": userEmail,
        "product_price": productPrice,
        "discount": discount,
        "admin_fee": adminFee,
        "total_price": totalPrice,
        "transaction_date": transactionDate == null ? null : transactionDate!.toIso8601String(),
    };
}
