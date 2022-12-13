import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ppodb_2/models/profil/list_profil.dart';

import 'package:ppodb_2/page/widgets/finite_state.dart';
import 'package:ppodb_2/service/database/myCuan_Api.dart';


class BalanceProvider extends ChangeNotifier {
  final MyCuanAPI service = MyCuanAPI();

  Wallet? balance;

  MyState myState = MyState.loading;

  Future fetchBalance() async {
    try {
      myState = MyState.loading;
      notifyListeners();

      balance = await service.getBalance();

      myState = MyState.loaded;
      notifyListeners();
    } catch (e) {
      if (e is DioError) {
        /// If want to check status code from service error
        e.response!.statusCode;
      }

      myState = MyState.failed;
      notifyListeners();
    }
  }
}
