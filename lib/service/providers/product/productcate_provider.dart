import 'package:flutter/material.dart';
import 'package:ppodb_2/models/product/productcate.dart';
import 'package:ppodb_2/service/database/myCuan_Api.dart';

class ProductcateProviders extends ChangeNotifier {
  final MyCuanAPI service = MyCuanAPI();
  List<Datacate> category = [];
  Catestate _state = Catestate.none;
  Catestate get state => _state;

  ProductcateProviders() {
    _fetchcate();
  }
  changeState(Catestate s) {
    _state = s;
    notifyListeners();
  }

  void _fetchcate() async {
    changeState(Catestate.loading);
    try {
      category = await service.getcate();

      changeState(Catestate.none);
    } catch (error) {
      changeState(Catestate.error);
    }
  }

  List<Datacate> get isicategory {
    var temp = [...category];

    return temp;
  }
}

enum Catestate {
  none,
  loading,
  error,
}
