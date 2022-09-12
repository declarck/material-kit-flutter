import 'package:flutter/material.dart';
import 'package:material_kit_flutter/constants/theme.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/gradient_text.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/bg-abstract.jpg"),
                  fit: BoxFit.cover))),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5),
                child: Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset("assets/img/albinasoft-logo-blue.png",
                            scale: 1),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: GradientText(
                  'CallCenterTR',
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                  gradient: LinearGradient(colors: [
                    Colors.blue.shade700,
                    Colors.cyanAccent.shade100,
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 50),
                child: GradientText(
                  'www.callcentertr.com',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  gradient: LinearGradient(colors: [
                    Colors.blue.shade700,
                    Colors.cyanAccent.shade100,
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Text.rich(TextSpan(
                  text: "Müşterilerinize 7/24 hizmet verin",
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                )),
              ),
              Divider(
                color: MaterialColors.blueSoftLightest,
                thickness: 1,
                endIndent: 100,
                indent: 100,
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Text.rich(TextSpan(
                  text: "Geri bildirimleri değerlendirin",
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                )),
              ),
              Divider(
                color: MaterialColors.blueSoftLightest,
                thickness: 1,
                endIndent: 100,
                indent: 100,
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Text.rich(TextSpan(
                  text: "Süreçlerinizi sürekli geliştirin",
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlatButton(
                      textColor: Colors.white,
                      color: MaterialColors.blueSoftLight,
                      onPressed: () async {
                        const url =
                            'https://www.albinasoft.com/AnaSayfa#contacts';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Image.asset("assets/img/albinasoft-title.png",
                            scale: 1.5),
                      ),
                    ),
                    FlatButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Text("KULLANICI GİRİŞİ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 14))),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    ]));
  }
}
