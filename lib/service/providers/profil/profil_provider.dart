import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ppodb_2/models/profil/list_profil.dart';
import 'package:ppodb_2/models/wallet/list_wallet.dart';
import 'package:ppodb_2/page/akun/akun.dart';
import 'package:ppodb_2/page/widgets/finite_state.dart';
import 'package:ppodb_2/service/database/myCuan_Api.dart';


class ProfilProvider extends ChangeNotifier {
  final MyCuanAPI service = MyCuanAPI();

  DataProfil? profil;
  String _isNext = "";

  MyState myState = MyState.loading;

  Future fetchProfil() async {
    try {
      myState = MyState.loading;
      notifyListeners();

      profil = await service.getProfil();

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

  void updateProfil(String name, String phone_number, String email,
       ) async {
    try {
      final result = await MyCuanAPI().updateUser(
          name, phone_number, email,);
          _isNext = "berhasil";
      
      DataProfil profilupdate = DataProfil();     
      profil = profilupdate;
      print("dijalankan");
      print(result);
      
    } catch (e) {
      
     _isNext = "gagal"; 
    }
    notifyListeners();
  }

  void updateGambar(File gambar,
       ) async {
    try {
      final result = await MyCuanAPI().updateGambar(gambar);
        _isNext = "berhasil";
      
      
      DataProfil profilGambar = DataProfil();     
      profil = profilGambar;
      print("dijalankan");
      print(result);
      
    } catch (e) {
      
     _isNext = "gagal"; 
    }
    notifyListeners();
  }
}



