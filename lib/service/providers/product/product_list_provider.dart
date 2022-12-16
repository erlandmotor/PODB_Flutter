import 'package:flutter/material.dart';
import 'package:ppodb_2/models/product.dart';
import 'package:ppodb_2/models/product/product_detail.dart';
import 'package:ppodb_2/models/product/productcate.dart';
import 'package:ppodb_2/service/database/myCuan_Api.dart';

class ProductListProviders extends ChangeNotifier {
  late MyCuanAPI service;
  List<Productmodel> status = [];
  List<DataProduct> product = [];
  List<DataProduct> products = [];
  Productstate _state = Productstate.none;
  Productstate get state => _state;

  ProductListProviders() {
    service = MyCuanAPI();
  }
  changeState(Productstate s) {
    _state = s;
    notifyListeners();
  }

  List<DataProduct> get isicategory {
    var temp = [...products];
    print(temp);
    return temp;
  }

  kirimData(int tipe, String nomor) async {
    changeState(Productstate.loading);
    try {
      product = await service.getproduct(tipe, nomor);

      products = [...product];
      changeState(Productstate.none);
    } catch (error) {
      changeState(Productstate.error);
    }
  }
}

enum Productstate {
  none,
  loading,
  error,
}
