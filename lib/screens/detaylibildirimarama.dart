import 'package:flutter/material.dart';
import 'package:material_kit_flutter/constants/Theme.dart';
import 'package:material_kit_flutter/widgets/card-horizontal.dart';
import 'package:material_kit_flutter/widgets/card-rectangle.dart';
import 'package:material_kit_flutter/widgets/card-small.dart';
import 'package:material_kit_flutter/widgets/drawer.dart';

class DetayliBildirimArama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MaterialColors.blueSoftDarkest,
        appBar: AppBar(
          title: Text('Gelen Çağrı - Bildirim Arama'),
          backgroundColor: MaterialColors.blueSoftDarker,
        ),
        drawer: MaterialDrawer(currentPage: "DetayliBildirimArama"),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: CardHorizontal(
                      cta: "Ara ve Raporla",
                      title: 'Gelen çağrı ve bildirimler',
                      img: 'https://i.im.ge/2022/08/20/OL2GFK.bildirimler.jpg',
                      tap: () {
                        Navigator.pushNamed(context, '/aramaraporlama');
                      }),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardSmall(
                        cta: 'Görüntüle',
                        title: 'Takibi Başlamamış Bildirimler',
                        textal: TextAlign.left,
                        img: 'https://i.im.ge/2022/08/20/OL2Rkc.baslamamis.jpg',
                        tap: () {
                          Navigator.pushNamed(
                              context, '/bildirimlistesi');
                        }),
                    CardSmall(
                        cta: 'Görüntüle',
                        title: 'Takibi Devam Eden Bildirimler',
                        textal: TextAlign.center,
                        img: 'https://i.im.ge/2022/08/20/OL2gq0.devameden.jpg',
                        tap: () {
                          Navigator.pushNamed(
                              context, '/bildirimlistesi');
                        }),
                    CardSmall(
                        cta: 'Görüntüle',
                        title: 'Takibi Tamamlanan Bildirimler',
                        textal: TextAlign.right,
                        img: 'https://i.im.ge/2022/08/20/OL28tT.tamamlanan.jpg',
                        tap: () {
                          Navigator.pushNamed(
                              context, '/bildirimlistesi');
                        })
                  ],
                ),
                //SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: CardRectangle(
                      cta: "Görüntüle",
                      title: '100 adet bildirim bugün kaydedilmiştir',
                      img: null,
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
