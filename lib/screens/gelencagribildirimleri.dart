import 'package:flutter/material.dart';
import 'package:material_kit_flutter/constants/Theme.dart';
import 'package:material_kit_flutter/widgets/card-horizontal.dart';
import 'package:material_kit_flutter/widgets/card-rectangle.dart';
import 'package:material_kit_flutter/widgets/card-small.dart';
import 'package:material_kit_flutter/widgets/drawer.dart';

class GelenCagriBildirimleri extends StatelessWidget {
  int gunlukBildirim = 9999;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MaterialColors.blueSoftDarkest,
        appBar: AppBar(
          title: Text('Gelen Çağrı Bildirimleri'),
          backgroundColor: MaterialColors.blueSoftDarker,
        ),
        drawer: MaterialDrawer(currentPage: "GelenCagriBildirimleri"),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: CardHorizontal(
                      cta: "Ara ve Raporla",
                      title: 'Tüm Gelen Çağrı Bildirimleri',
                      img: 'assets/img/bildirim.jpg',
                      tap: () {
                        Navigator.pushNamed(context, '/aramaraporlama');
                      },
                      buttonlink: '/aramaraporlama'),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardSmall(
                        cta: 'Görüntüle',
                        title: 'Takibi\nBaşlamamış\nBildirimler',
                        textaligner: TextAlign.left,
                        img: 'assets/img/baslamamis.jpg',
                        tap: () {
                          Navigator.pushNamed(context, '/bildirimlistesi');
                        }),
                    CardSmall(
                        cta: 'Görüntüle',
                        title: 'Takibi\nDevam Eden\nBildirimler',
                        textaligner: TextAlign.center,
                        img: 'assets/img/devameden.jpg',
                        tap: () {
                          Navigator.pushNamed(context, '/bildirimlistesi');
                        }),
                    CardSmall(
                        cta: 'Görüntüle',
                        title: 'Takibi\nTamamlanan\nBildirimler',
                        textaligner: TextAlign.right,
                        img: 'assets/img/tamamlanan.jpg',
                        tap: () {
                          Navigator.pushNamed(context, '/bildirimlistesi');
                        })
                  ],
                ),
                //SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: CardRectangle(
                      cta: "Görüntüle",
                      title: '  adet bildirim bugün kaydedildi.',
                      countertitle: '$gunlukBildirim',
                      //img: null,
                      tap: () {
                        Navigator.pushNamed(context, '/bildirimlistesi');
                      }),
                ),
              ],
            ),
          ),
        ));
  }
}
