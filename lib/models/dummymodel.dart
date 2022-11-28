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
