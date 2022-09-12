import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_kit_flutter/constants/theme.dart';

import '../riverpod/riverpod_management.dart';

class Login extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginState();
}

class _LoginState extends ConsumerState<Login> {
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
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset("assets/img/login-vector.png", scale: 3),
                      ]),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: ref.read(loginRiverpod).email,
                              style: TextStyle(color: Colors.white70),
                              decoration: InputDecoration(
                                  hintText: 'Kullanıcı Adınız',
                                  hintStyle: TextStyle(color: Colors.white70),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                    color: MaterialColors.blueSoft,
                                  ))),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: ref.read(loginRiverpod).password,
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
                          ),
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
                        onPressed: () {
                          Navigator.pushNamed(context, '/sifremiunuttum');
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
                        // onPressed: () {
                        //   Navigator.pushReplacementNamed(
                        //       context, '/gelencagribildirimleri');
                        // },
                        onPressed: () => ref.read(loginRiverpod).fetch(),
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
