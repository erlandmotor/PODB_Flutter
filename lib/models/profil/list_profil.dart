// To parse this JSON data, do
//
//     final profil = profilFromJson(jsonString);

import 'dart:convert';

class DataProfil {
    DataProfil({
        this.status,
        this.message,
        this.data,
    });

    final String? status;
    final String? message;
    final Data? data;

    factory DataProfil.fromRawJson(String str) => DataProfil.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory DataProfil.fromJson(Map<String, dynamic> json) => DataProfil(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
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
        this.roleId,
        this.roleName,
        this.wallet,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
    });

    final int? id;
    final String? name;
    final String? phoneNumber;
    final String? email;
    final String? password;
    final String? image;
    final int? roleId;
    final String? roleName;
    final Wallet? wallet;
    final DateTime? createdAt;
    final DateTime? updatedAt;
    final DateTime? deletedAt;

    factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        phoneNumber: json["phone_number"],
        email: json["email"],
        password: json["password"],
        image: json["image"],
        roleId: json["role_id"],
        roleName: json["role_name"],
        wallet: json["wallet"] == null ? null : Wallet.fromJson(json["wallet"]),
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"]== null ? null : DateTime.parse(json["deleted_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone_number": phoneNumber,
        "email": email,
        "password": password,
        "image": image,
        "role_id": roleId,
        "role_name": roleName,
        "wallet": wallet == null ? null : wallet!.toJson(),
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "deleted_at": deletedAt== null ? null : updatedAt!.toIso8601String(),
    };
}

class Wallet {
    Wallet({
        this.noWallet,
        this.userId,
        this.balance,
        this.historiesWallet,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
    });

    final String? noWallet;
    final int? userId;
    final int? balance;
    final dynamic historiesWallet;
    final DateTime? createdAt;
    final DateTime? updatedAt;
    final DateTime? deletedAt;

    factory Wallet.fromRawJson(String str) => Wallet.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Wallet.fromJson(Map<String, dynamic> json) => Wallet(
        noWallet: json["no_wallet"],
        userId: json["user_id"],
        balance: json["balance"],
        historiesWallet: json["histories_wallet"]== null ? null : Wallet.fromJson(json["histories_wallet"]),
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"]== null ? null : DateTime.parse(json["deleted_at"]),
    );

    Map<String, dynamic> toJson() => {
        "no_wallet": noWallet,
        "user_id": userId,
        "balance": balance,
        "histories_wallet": historiesWallet== null ? null : historiesWallet!.toJson(),
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "deleted_at": deletedAt== null ? null : deletedAt!.toIso8601String(),
    };
}
