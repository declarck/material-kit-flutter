
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
                      image: AssetImage("assets/img/background-dark.jpg"),
                      fit: BoxFit.cover))),
          Padding(
            padding:
            const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 50.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset("assets/img/login-vector.png", scale: 3),
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 50, bottom:50),
                          child: Column(
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
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FlatButton(
                            textColor: Colors.white,
                            color: MaterialColors.blueSoft,
                            onPressed: () async {
                              const url = 'https://www.albinasoft.com/AnaSayfa#contacts';
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
                                padding: EdgeInsets.only(
                                    left: 16.0, right: 16.0, top: 12, bottom: 12),
                                child: Text("ŞİFREMİ UNUTTUM",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.0))),
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
                                padding: EdgeInsets.only(
                                    left: 16.0, right: 16.0, top: 12, bottom: 12),
                                child: Text("GİRİŞ YAP",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.0))),
                          ),
                        ],
                      ),
                    ),

                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextButton(
                          onPressed: () async {
                            const url = 'https://albinasoft.com/AnaSayfa';
                            if(await canLaunch(url)){
                              await launch(url);
                            }else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: Text("© Bir AlbinaSoft Projesidir.",
                              style: TextStyle(
                                  color: MaterialColors.blueSoft,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500)),
                        ),
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

