import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:grock/grock.dart';
import 'package:material_kit_flutter/screens/gelencagribildirimleri.dart';

import '../service/login_service.dart';

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
        //Grock.back();
        Grock.toRemove(GelenCagriBildirimleri());
      } else if (value?.Sonuc == 'Hata') {
        //Grock.back();
        Grock.snackBar(
            title: '${value?.MesajBaslik}',
            description: '${value?.MesajIcerik}');
      } else {
        //Grock.back();
        Grock.snackBar(
            title: 'İşlem', description: 'Lütfen işlemi gerçekleştiriniz.');
      }
    });
  }
}
