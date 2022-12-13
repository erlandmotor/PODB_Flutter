// // To parse this JSON data, do
// //
// //     final wallet = walletFromJson(jsonString);

// import 'dart:convert';

// class Wallet {
//     Wallet({
//         this.message,
//         this.data,
//     });

//     final String? message;
//     final Data? data;

//     factory Wallet.fromRawJson(String str) => Wallet.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory Wallet.fromJson(Map<String, dynamic> json) => Wallet(
//         message: json["message"],
//         data: json["data"] == null ? null : Data.fromJson(json["data"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "message": message,
//         "data": data == null ? null : data!.toJson(),
//     };
// }

// class Data {
//     Data({
//         this.userId,
//         this.walletId,
//         this.balance,
//     });

//     final int? userId;
//     final int? walletId;
//     final int? balance;

//     factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory Data.fromJson(Map<String, dynamic> json) => Data(
//         userId: json["user_id"],
//         walletId: json["wallet_id"],
//         balance: json["balance"],
//     );

//     Map<String, dynamic> toJson() => {
//         "user_id": userId,
//         "wallet_id": walletId,
//         "balance": balance,
//     };
// }
