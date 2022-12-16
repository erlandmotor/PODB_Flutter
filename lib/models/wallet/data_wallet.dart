// To parse this JSON data, do
//
//     final walletmodel = walletmodelFromJson(jsonString);

import 'dart:convert';

Walletmodel walletmodelFromJson(String str) =>
    Walletmodel.fromJson(json.decode(str));

String walletmodelToJson(Walletmodel data) => json.encode(data.toJson());

class Walletmodel {
  Walletmodel({
    this.status,
    this.message,
    this.data,
  });

  String? status;
  String? message;
  Walletdata? data;

  factory Walletmodel.fromJson(Map<String, dynamic> json) => Walletmodel(
        status: json["status"],
        message: json["message"],
        data: Walletdata.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data!.toJson(),
      };
}

class Walletdata {
  Walletdata({
    this.noWallet,
    this.userId,
    this.balance,
    this.historiesWallet,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  String? noWallet;
  int? userId;
  int? balance;
  List<HistoriesWallet>? historiesWallet;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? deletedAt;

  factory Walletdata.fromJson(Map<String, dynamic> json) => Walletdata(
        noWallet: json["no_wallet"],
        userId: json["user_id"],
        balance: json["balance"],
        historiesWallet: List<HistoriesWallet>.from(
            json["histories_wallet"].map((x) => HistoriesWallet.fromJson(x))),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "no_wallet": noWallet,
        "user_id": userId,
        "balance": balance,
        "histories_wallet":
            List<dynamic>.from(historiesWallet!.map((x) => x.toJson())),
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "deleted_at": deletedAt!.toIso8601String(),
      };
}

class HistoriesWallet {
  HistoriesWallet({
    this.historyWalletIdPrimaryKey,
    this.noWallet,
    this.cashIn,
    this.cashOut,
    this.description,
    this.dateWallet,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  int? historyWalletIdPrimaryKey;
  String? noWallet;
  int? cashIn;
  int? cashOut;
  String? description;
  DateTime? dateWallet;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? deletedAt;

  factory HistoriesWallet.fromJson(Map<String, dynamic> json) =>
      HistoriesWallet(
        historyWalletIdPrimaryKey: json["history_wallet_id;primaryKey"],
        noWallet: json["no_wallet"],
        cashIn: json["cash_in"],
        cashOut: json["cash_out"],
        description: json["description"],
        dateWallet: DateTime.parse(json["date_wallet"]),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: DateTime.parse(json["deleted_at"]),
      );

  Map<String, dynamic> toJson() => {
        "history_wallet_id;primaryKey": historyWalletIdPrimaryKey,
        "no_wallet": noWallet,
        "cash_in": cashIn,
        "cash_out": cashOut,
        "description": description,
        "date_wallet": dateWallet!.toIso8601String(),
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "deleted_at": deletedAt!.toIso8601String(),
      };
}
