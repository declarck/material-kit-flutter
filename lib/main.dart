import 'package:flutter/material.dart';
import 'package:material_kit_flutter/screens/components.dart';
import 'package:material_kit_flutter/screens/aramaraporlama.dart';
import 'package:material_kit_flutter/screens/bildirimlistesi.dart';
import 'package:material_kit_flutter/screens/gelencagribildirimleri.dart';
import 'package:material_kit_flutter/screens/login.dart';
import 'package:material_kit_flutter/screens/onboarding.dart';
import 'package:material_kit_flutter/screens/profile.dart';
import 'package:material_kit_flutter/screens/settings.dart';
import 'package:material_kit_flutter/screens/yenibildirimgirisi.dart';

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
          "/components": (BuildContext context) => new Components(),
          "/profile": (BuildContext context) => new Profile(),
          "/settings": (BuildContext context) => new Settings(),
          "/yenibildirimgirisi": (BuildContext context) =>
              new YeniBildirimGirisi(),
          "/gelencagribildirimleri": (BuildContext context) =>
              new GelenCagriBildirimleri(),
          "/bildirimlistesi": (BuildContext context) => new BildirimListesi(),
          "/aramaraporlama": (BuildContext context) => new AramaRaporlama(),
        });
  }
}
