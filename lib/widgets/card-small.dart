import 'package:flutter/material.dart';
import 'package:material_kit_flutter/constants/Theme.dart';

class CardSmall extends StatelessWidget {
  CardSmall(
      {this.title = "Placeholder Title",
      this.cta = "",
      this.img = "https://via.placeholder.com/200",
      this.tap = defaultFunc,
      this.textal = TextAlign.center});

  final String cta;
  final String img;
  final Function tap;
  final String title;
  var textal;

  static void defaultFunc() {
    print("the function works!");
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Container(
      height: 160,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(
                              5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(title,
                                  textAlign: textal,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12)),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: OutlinedButton(
                                  onPressed: () => Navigator.pushNamed(context, '/bildirimlistesi'),
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6)),
                                    side: BorderSide(width: 2, color: Colors.lightGreen),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
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
                        ))
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
                                BorderRadius.all(Radius.circular(4.0)),
                            image: DecorationImage(
                              image: NetworkImage(img),
                              fit: BoxFit.cover,
                            )))))
          ])),
    ));
  }
}
