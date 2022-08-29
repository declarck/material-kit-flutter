import 'package:flutter/material.dart';
import 'package:material_kit_flutter/constants/Theme.dart';

class CardSmall extends StatelessWidget {
  CardSmall(
      {this.title = "Placeholder Title",
      this.cta = "",
      this.img = "assets/img/bildirim.jpg",
      this.tap = defaultFunc,
      this.textaligner = TextAlign.center});

  final String cta;
  final String img;
  final VoidCallback tap;
  final String title;
  var textaligner;

  static void defaultFunc() {
    print("the function works!");
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Container(
      height: 180,
      margin: EdgeInsets.only(top: 10),
      child: GestureDetector(
          onTap: tap,
          child: Stack(clipBehavior: Clip.none, children: [
            Card(
                color: MaterialColors.blueSoftDark,
                elevation: 0.7,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(title,
                                textAlign: textaligner,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: OutlinedButton(
                              onPressed: () => Navigator.pushNamed(
                                  context, '/bildirimlistesi'),
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6)),
                                side: BorderSide(
                                    width: 2, color: Colors.lightGreen),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Text(
                                  cta,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
            FractionalTranslation(
                translation: Offset(0, -0.04),
                child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.width / 3.5,
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.06),
                                  spreadRadius: 2,
                                  blurRadius: 1,
                                  offset: Offset(0, 0))
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.0)),
                            image: DecorationImage(
                              image: AssetImage(img),
                              fit: BoxFit.cover,
                            )))))
          ])),
    ));
  }
}
