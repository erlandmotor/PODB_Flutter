import 'package:flutter/material.dart';
import 'package:ppodb_2/models/product.dart';
import 'package:ppodb_2/models/product/product_data_model.dart';
import 'package:ppodb_2/models/product/product_detail.dart';
import 'package:ppodb_2/models/product/productcate.dart';
import 'package:ppodb_2/service/database/myCuan_Api.dart';

class ProductListProviders extends ChangeNotifier {
  late MyCuanAPI service;
  late Productda product;
  late Productda bambang;

  Productstate _state = Productstate.none;
  Productstate get state => _state;

  ProductListProviders() {
    service = MyCuanAPI();
  }
  changeState(Productstate s) {
    _state = s;
    notifyListeners();
  }

  Productda get isicategory {
    var temp = product;
    print(temp);
    return temp;
  }

  addtransaksi(int tipe, String nomor) async {
    changeState(Productstate.loading);
    try {
      await service.updatetransaksi(tipe, nomor);
      changeState(Productstate.none);
    } catch (error) {
      changeState(Productstate.error);
    }
  }

  addnominal(int nomor) async {
    changeState(Productstate.loading);
    try {
      await service.addbalance(nomor);
      changeState(Productstate.none);
    } catch (error) {
      changeState(Productstate.error);
    }
  }

  getdatabaru(int tipe, String nomor) async {
    changeState(Productstate.loading);
    try {
      bambang = await service.getproductbaru(tipe, nomor);
      product = bambang;
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
