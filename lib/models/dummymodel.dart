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
  String namavoucher;
  String kode;

  int diskon;
  int tipe;
  int stock;
  String expired;
  DummyVoucher(
      {required this.id,
      required this.nama,
      required this.namavoucher,
      required this.kode,
      required this.diskon,
      required this.tipe,
      required this.stock,
      required this.expired});
}

class DummyTransTelekom {
  int? id;
  int nomor;
  int type;
  String nama;
  int harga;
  int biayaadmin;
  int? diskon;
  DummyTransTelekom(
      {required this.nomor,
      required this.nama,
      required this.type,
      required this.harga,
      required this.biayaadmin});
}

class Dummymethod {
  int id;
  String name;
  String gambar;

  Dummymethod({required this.id, required this.name, required this.gambar});
}
