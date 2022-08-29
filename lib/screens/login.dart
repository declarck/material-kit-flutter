
import 'package:flutter/material.dart';
import 'package:material_kit_flutter/constants/Theme.dart';
import 'package:url_launcher/url_launcher.dart';

class Login extends StatelessWidget {
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
            padding:
            const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset("assets/img/login-vector.png", scale: 3),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              StatefulBuilder(builder: (BuildContext context,
                                  StateSetter dropDownState) {
                                return Expanded(
                                  child: TextField(
                                    style: TextStyle(color: Colors.white70),
                                    decoration: InputDecoration(
                                        hintText: 'Kullanıcı Adınız',
                                        hintStyle: TextStyle(color: Colors.white70),
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: MaterialColors.blueSoft,
                                            ))),
                                  ),
                                );
                              }),
                            ],
                          ),
                          Row(
                            children: [
                              StatefulBuilder(builder: (BuildContext context,
                                  StateSetter dropDownState) {
                                return Expanded(
                                  child: TextField(
                                    obscureText: true,
                                    style: TextStyle(color: Colors.white70),
                                    decoration: InputDecoration(
                                        hintText: 'Şifreniz',
                                        hintStyle: TextStyle(color: Colors.white70),
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: MaterialColors.blueSoft,
                                            ))),
                                  ),
                                );
                              }),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlatButton(
                            textColor: Colors.white,
                            color: MaterialColors.blueSoft,
                            onPressed: () async {
                              const url = 'https://giris.albinasoft.com/SifremiUnuttum?rd=https://www.callcentertr.com';
                              if(await canLaunch(url)){
                                await launch(url);
                              }else {
                                throw 'Could not launch $url';
                              }
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Text("ŞİFREMİ UNUTTUM",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12))),
                          ),
                          FlatButton(
                            textColor: Colors.white,
                            color: Colors.green,
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/gelencagribildirimleri');
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Text("GİRİŞ YAP",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12))),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]));
  }
}

