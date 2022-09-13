import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';
import 'package:grock/grock.dart';
import 'package:material_kit_flutter/screens/arama_raporlama.dart';
import 'package:material_kit_flutter/screens/bildirim_listesi.dart';
import 'package:material_kit_flutter/screens/components.dart';
import 'package:material_kit_flutter/screens/gelen_cagri_bildirimleri.dart';
import 'package:material_kit_flutter/screens/login.dart';
import 'package:material_kit_flutter/screens/onboarding.dart';
import 'package:material_kit_flutter/screens/profile.dart';
import 'package:material_kit_flutter/screens/settings.dart';
import 'package:material_kit_flutter/screens/sifremi_unuttum.dart';
import 'package:material_kit_flutter/screens/splash.dart';
import 'package:material_kit_flutter/screens/yeni_bildirim_girisi.dart';

//Test for committing.
void main() async {
  await GetStorage.init();
  runApp(ProviderScope(child: CallCenterTR()));
}

class CallCenterTR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Call Center TR",
        debugShowCheckedModeBanner: false,
        navigatorKey: Grock.navigationKey,
        scaffoldMessengerKey: Grock.scaffoldMessengerKey,
        initialRoute: "/splash",
        routes: <String, WidgetBuilder>{
          "/splash": (BuildContext context) => new Splash(),
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
