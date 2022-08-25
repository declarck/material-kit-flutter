import 'package:flutter/material.dart';
import 'package:material_kit_flutter/screens/aramaraporlama.dart';
import 'package:material_kit_flutter/screens/components.dart';
import 'package:material_kit_flutter/screens/bildirimlistesi.dart';
// screens
import 'package:material_kit_flutter/screens/detaylibildirimarama.dart';
import 'package:material_kit_flutter/screens/onboarding.dart';
import 'package:material_kit_flutter/screens/pro.dart';
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
          "/pro": (BuildContext context) => new Pro(),
          "/yenibildirimgirisi": (BuildContext context) =>
              new YeniBildirimGirisi(),
          "/detaylibildirimarama": (BuildContext context) =>
              new DetayliBildirimArama(),

          "/components": (BuildContext context) => new Components(),
          "/profile": (BuildContext context) => new Profile(),
          "/settings": (BuildContext context) => new Settings(),

          "/bildirimlistesi": (BuildContext context) => new BildirimListesi(),
          "/aramaraporlama": (BuildContext context) => new AramaRaporlama(),
        });
  }
}
