import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:ppodb_2/models/register_model.dart';
import 'package:ppodb_2/models/wallet/list_wallet.dart';

final _dio = Dio(
  BaseOptions(
    baseUrl: 'https://virtserver.swaggerhub.com/ppob-mycuan/api/1.0.0/',
  ),
);
class MyCuanAPI {
  MyCuanAPI() {
    
    _dio.interceptors.add(
      LogInterceptor(
        responseBody: true,
        requestBody: true,
      ),
    );
  }
  String _isNext = "";
  String get isNext => _isNext;


  Future<Wallet> getBalance() async {
    try {
      final response = await _dio
          .get('/user/wallets',);
         
         _isNext = "berhasil";
        return Wallet.fromJson(response.data);
      
    } on DioError catch (e) {
      print(e.response!.data['message']);
      print('data bermasalah');
       _isNext = "gagal";
      rethrow;
    }
  }
  Future getToken(String email, String password) async {
    try {
      final response = await _dio
          .post('/v1/auth/login', data: {"email":email, "password":password});
        return response.data['token'];
      
    } catch (e) {
      rethrow;
    }
  }
}