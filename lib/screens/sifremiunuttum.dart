
import 'package:flutter/material.dart';
import 'package:material_kit_flutter/constants/Theme.dart';

class SifremiUnuttum extends StatelessWidget {
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
                                        hintText: 'E-Posta adresiniz',
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
                            color: Colors.deepOrangeAccent,
                            onPressed: () => Navigator.of(context).pop(),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Text("VAZGEÇ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12))),
                          ),
                          FlatButton(
                            textColor: Colors.white,
                            color: Colors.green,
                            onPressed: () {
                              showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (context) => AlertDialog(
                                  elevation: 25,
                                  backgroundColor: MaterialColors.blueSoftDarker,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  //scrollable: true,
                                  title: Text(
                                    'Şifre Güncelleme İşlemi Başlamıştır.',
                                    style: TextStyle(color: Colors.white70),
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        children: [
                                          Flexible(
                                            child: Text(
                                              'Tarafınıza gönderilen e-posta içerisinde şifre güncelleme bilgileri paylaşılmıştır. Lütfen e-posta kutunuzu kontrol ediniz.',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.white70),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    OutlinedButton(
                                      onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false),
                                      style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(6)),
                                        side: BorderSide(width: 2, color: MaterialColors.blueSoft),
                                      ),
                                      child: Text(
                                        'Tamam',
                                        style: TextStyle(
                                          color: Colors.white70,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Text("GÖNDER",
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

