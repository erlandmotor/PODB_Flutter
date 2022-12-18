import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:ppodb_2/models/register_model.dart';

final _dio = Dio(
  BaseOptions(
    baseUrl: 'http://108.136.220.111',
  ),
);
class RegisterDioService {
  RegisterDioService() {
    
    _dio.interceptors.add(
      LogInterceptor(
        responseBody: true,
        requestBody: true,
      ),
    );
  }
  String _isNext = "";
  String get isNext => _isNext;


  Future<Data> getAllRegister(String name, String phone_number, String email, String password, String image) async {
    try {
      final response = await _dio
          .post('/v1/auth/register', data: {"name":name, "phone_number":phone_number, "email":email, "password":password, "image":""});
         
         _isNext = "berhasil";
        return response.data['data'];
      
    } on DioError catch (e) {
      print(e.response!.data['message']);
      // print('data bermasalah');
       _isNext = "gagal";
      rethrow;
    }
  }
  Future getToken(String email, String password) async {
    try {
      final response = await _dio
          .post('/v1/auth/login', data: {"email":email, "password":password});
         
            return response.data['token'];
          
        
      
    } on DioError catch (e) {
      
      rethrow;
    }
  }
}