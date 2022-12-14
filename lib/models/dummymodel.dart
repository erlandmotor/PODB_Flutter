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
  int? id;
  String name;
  String gambar;

  Dummymethod({this.id, required this.name, required this.gambar});
}

class PelangganListrik {
  int id;
  String name;
  int nomorpelanggan;
  int tagihan;
  String periode;
  PelangganListrik(
      {required this.id,
      required this.name,
      required this.nomorpelanggan,
      required this.periode,
      required this.tagihan});
}

class PelangganToken {
  int id;
  String name;
  int nomorpelanggan;
  String daya;
  PelangganToken(
      {required this.id,
      required this.daya,
      required this.name,
      required this.nomorpelanggan});
}

class DummyBPJS {
  int id;
  String name;
  int kode;
  String periode;
  int person;
  int harga;
  DummyBPJS(
      {required this.id,
      required this.kode,
      required this.name,
      required this.periode,
      required this.harga,
      required this.person});
}

class DummyPDAM {
  int id;
  String name;
  int kode;
  int harga;
  String wilayah;
  DummyPDAM(
      {required this.id,
      required this.name,
      required this.kode,
      required this.harga,
      required this.wilayah});
}

class KirimanKonfirm {
  int tipe;
  int biayaadmin;
  int nomor;

  KirimanKonfirm({
    required this.tipe,
    required this.biayaadmin,
    required this.nomor,
  });
}

class Dummylangganan {
  int id;
  String name;
  int nomor;
  Dummylangganan({required this.id, required this.name, required this.nomor});
}
