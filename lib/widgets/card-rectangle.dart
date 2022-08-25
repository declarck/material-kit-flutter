import 'package:flutter/material.dart';
import 'package:material_kit_flutter/constants/Theme.dart';

class CardRectangle extends StatelessWidget {
  CardRectangle(
      {
        this.title = "Placeholder Title",
        this.countertitle = "Number",
        this.cta = "",
        this.img = "https://via.placeholder.com/200",
        this.tap = defaultFunc
      });

  final String cta;
  final String img;
  final Function tap;
  final String title;
  final String countertitle;

  static void defaultFunc() {
    print("the function works!");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: null,
        margin: EdgeInsets.only(top: 10),
        child: GestureDetector(
            onTap: tap,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Card(
                    color: MaterialColors.blueSoftDark,
                    elevation: 0.7,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Row(
                                    children: [
                                      Text(countertitle,
                                          style: TextStyle(
                                            color: Colors.amber,
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold,)
                                      ),
                                      Text(title,
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 12)),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: OutlinedButton(
                                    onPressed: () => Navigator.pushNamed(context, '/bildirimlistesi'),
                                    style: OutlinedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(6)),
                                      side: BorderSide(width: 2, color: Colors.lightGreen),
                                    ),
                                    child: Text(
                                      cta,
                                      style: TextStyle(
                                        color: Colors.white70,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                      ],
                    )),
                // FractionalTranslation(
                //     translation: Offset(0, -0.05),
                //     child: Align(
                //         alignment: Alignment.topCenter,
                //         child: Container(
                //             padding: EdgeInsets.all(4.0),
                //             height: 50,
                //             width: MediaQuery.of(context).size.width * 0.85,
                //             decoration: BoxDecoration(
                //                 boxShadow: [
                //                   BoxShadow(
                //                       color: Colors.black.withOpacity(0.06),
                //                       spreadRadius: 2,
                //                       blurRadius: 1,
                //                       offset: Offset(0, 0))
                //                 ],
                //                 borderRadius:
                //                     BorderRadius.all(Radius.circular(4.0)),
                //                 image: DecorationImage(
                //                   image: NetworkImage(img),
                //                   fit: BoxFit.cover,
                //                 )))))
              ],
            )));
  }
}
