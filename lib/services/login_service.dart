import 'dart:developer';

import 'package:dio/dio.dart';

import '../models/login_model.dart';

class Service {
  final String baseUrl = "https://ccapi.albinasoft.com/api/MusteriKurumTanim/";
  final dio = Dio();
  Future<LoginModel?> loginCall({
    required String email,
    required String password,
  }) async {
    Map<String, dynamic> json = {"KullaniciAdi": email, "Sifre": password};
    var response = await dio.post(baseUrl + "LoginKontrol", data: json);
    if (response.statusCode == 200) {
      var result = LoginModel.fromJson(response.data);
      log('Gelen response => ${response.data}');
      return result;
    } else {
      throw ('Bir sorun oluştu! ${response.statusCode}');
    }
  }
}
