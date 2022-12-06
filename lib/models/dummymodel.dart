class ProductDummyModel {
  int id;
  String name;
  int harga;
  String status;
  int diskon;
  ProductDummyModel(
      {required this.id,
      required this.name,
      required this.diskon,
      required this.harga,
      required this.status});
}

final List<ProductDummyModel> dummydata = [
  ProductDummyModel(
      id: 1, name: "5.000", diskon: 2000, harga: 6000, status: "diskon"),
  ProductDummyModel(
      id: 2, name: "10.000", diskon: 0, harga: 10200, status: "tersedia"),
  ProductDummyModel(
      id: 3, name: "20.000", diskon: 0, harga: 22000, status: "tersedia"),
  ProductDummyModel(
      id: 4, name: "50.000", diskon: 0, harga: 51000, status: "tersedia"),
  ProductDummyModel(
      id: 1, name: "100.000", diskon: 2000, harga: 100000, status: "diskon"),
];

class Dummypaket {
  int id;
  String name;
  String desc;
  int harga;
  Dummypaket(
      {required this.desc,
      required this.harga,
      required this.id,
      required this.name});
}

class Dummycate {
  int id;
  String gmbr;
  String name;
  Dummycate({required this.id, required this.name, required this.gmbr});
}

class Dummypro {
  int id;
  String name;
  List<Dummycate> pro;
  Dummypro({required this.id, required this.name, required this.pro});
}

class Dummywilayah {
  int id;
  String provinsi;
  List wilayah;
  Dummywilayah(
      {required this.id, required this.provinsi, required this.wilayah});
}

class DummyVoucher {
  int id;
  String nama;
  String kode;
  String valid;
  int diskon;
  String provider;
  DummyVoucher(
      {required this.id,
      required this.nama,
      required this.kode,
      required this.diskon,
      required this.provider,
      required this.valid});
}

class DummyTransTelekom {
  int? id;
  int nomor;
  String provider;
  String nama;
  int harga;
  int biayaadmin;
  String? voucher;
  int? nilaivoucher;
  DummyTransTelekom(
      {required this.nomor,
      required this.nama,
      required this.provider,
      required this.harga,
      required this.biayaadmin});
}
