class product {
  int id;
  String name;
  String category;
  String image;
  List<dynamic> produk;

  product(
      {required this.id,
      required this.name,
      required this.category,
      required this.image,
      required this.produk});
}

class produk {
  int id;
  String name;
  String deskripsi;
  int harga;
  int providerid;

  produk(
      {required this.deskripsi,
      required this.harga,
      required this.id,
      required this.name,
      required this.providerid});
}
