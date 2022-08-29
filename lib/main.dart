import 'package:flutter/material.dart';

import 'package:material_kit_flutter/screens/onboarding.dart';
import 'package:material_kit_flutter/screens/login.dart';
import 'package:material_kit_flutter/screens/sifremiunuttum.dart';

import 'package:material_kit_flutter/screens/components.dart';
import 'package:material_kit_flutter/screens/profile.dart';
import 'package:material_kit_flutter/screens/settings.dart';

import 'package:material_kit_flutter/screens/bildirimlistesi.dart';
import 'package:material_kit_flutter/screens/aramaraporlama.dart';

import 'package:material_kit_flutter/screens/yenibildirimgirisi.dart';
import 'package:material_kit_flutter/screens/gelencagribildirimleri.dart';

void main() => runApp(CallCenterTR());

class CallCenterTR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Call Center TR",
        debugShowCheckedModeBanner: false,
        initialRoute: "/onboarding",
        routes: <String, WidgetBuilder>{
          "/onboarding": (BuildContext context) => new Onboarding(),
          "/login": (BuildContext context) => new Login(),
          "/sifremiunuttum": (BuildContext context) => new SifremiUnuttum(),

          "/components": (BuildContext context) => new Components(),
          "/profile": (BuildContext context) => new Profile(),
          "/settings": (BuildContext context) => new Settings(),

          "/bildirimlistesi": (BuildContext context) => new BildirimListesi(),
          "/aramaraporlama": (BuildContext context) => new AramaRaporlama(),

          "/yenibildirimgirisi": (BuildContext context) =>
              new YeniBildirimGirisi(),
          "/gelencagribildirimleri": (BuildContext context) =>
              new GelenCagriBildirimleri(),
        });
  }
}
