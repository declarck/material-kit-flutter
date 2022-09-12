import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:grock/grock.dart';
import 'package:material_kit_flutter/screens/gelen_cagri_bildirimleri.dart';

import '../services/login_service.dart';

class LoginRiverpod extends ChangeNotifier {
  Service service = Service();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final box = GetStorage();

  void fetch() {
    service.loginCall(email: email.text, password: password.text).then((value) {
      if (value != null && value.Sonuc! == 'Ok') {
        box.write('token', value.LoginToken);
        log('Kaydedilen token: ${box.read("token")}');
        Grock.toRemove(GelenCagriBildirimleri());
      } else if (value?.Sonuc == 'Hata') {
        Grock.snackBar(
            title: '${value?.MesajBaslik}',
            description: '${value?.MesajIcerik}');
      } else {
        Grock.snackBar(
            title: 'İşlem', description: 'Lütfen işlemi gerçekleştiriniz.');
      }
    });
  }
}
