import 'package:flutter/material.dart';
import 'package:ppodb_2/models/product.dart';
import 'package:ppodb_2/models/product/product_detail.dart';
import 'package:ppodb_2/models/product/productcate.dart';
import 'package:ppodb_2/service/database/myCuan_Api.dart';

class ProductListProviders extends ChangeNotifier {
  final MyCuanAPI service = MyCuanAPI();
  List<DataProduct> product = [];
  List<DataProduct> products = [];
  Productstate _state = Productstate.none;
  Productstate get state => _state;

  changeState(Productstate s) {
    _state = s;
    notifyListeners();
  }

  List<DataProduct> get isicategory {
    var temp = [...products];
    print(temp);
    return temp;
  }

  transaksi(String nomor, int type) async {
    changeState(Productstate.loading);
    try {
      await service.updatetransaksi(type, nomor);
      changeState(Productstate.none);
    } catch (error) {
      changeState(Productstate.error);
    }
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
