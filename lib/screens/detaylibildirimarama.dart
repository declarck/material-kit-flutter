import 'package:flutter/material.dart';
import 'package:material_kit_flutter/constants/Theme.dart';
import 'package:material_kit_flutter/widgets/card-horizontal.dart';
import 'package:material_kit_flutter/widgets/card-rectangle.dart';
import 'package:material_kit_flutter/widgets/card-small.dart';
import 'package:material_kit_flutter/widgets/drawer.dart';

final Map<String, Map<String, String>> homeCards = {
  "Bildirimler": {
    "title": "BİLDİRİMLER\narasında arama yapabileceğinizi biliyor muydunuz?",
    "image": "https://i.im.ge/2022/08/20/OL2GFK.bildirimler.jpg",
  },
  "Raporlar": {
    "title":
        "RAPORLARINIZI\nExcel, Word, Pdf dosyasına aktarmak ister misiniz?",
    "image": "https://i.im.ge/2022/08/20/OL24zF.rapor.jpg",
  },
  "Baslamamis": {
    "title": "Takibi başlamamış bildirimler.",
    "image": "https://i.im.ge/2022/08/20/OL2Rkc.baslamamis.jpg",
    //"image": "material_kit_flutter/assets/img/baslamamis.jpg",
  },
  "DevamEden": {
    "title": "Takibi devam eden bildirimler.",
    "image": "https://i.im.ge/2022/08/20/OL2gq0.devameden.jpg",
  },
  "Tamamlanan": {
    "title": "Takibi tamamlanan bildirimler.",
    "image": "https://i.im.ge/2022/08/20/OL28tT.tamamlanan.jpg",
  },
  "GunlukBildirim": {
    "title": "25 adet bildirim bugün kaydedilmiştir.",
    //"image": null,
  },
};

class DetayliBildirimArama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MaterialColors.blueSoftDarkest,
        appBar: AppBar(
          title: Text('Detaylı Bildirim Arama'),
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
                      cta: "Arama yapmak için tıklayınız.",
                      title: homeCards["Bildirimler"]['title'],
                      img: homeCards["Bildirimler"]['image'],
                      tap: () {
                        Navigator.pushReplacementNamed(context, '/onboarding');
                      }),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: CardHorizontal(
                      cta: "Aktarma yapmak için tıklayınız.",
                      title: homeCards["Raporlar"]['title'],
                      img: homeCards["Raporlar"]['image'],
                      tap: () {
                        Navigator.pushReplacementNamed(context, '/onboarding');
                      }),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardSmall(
                        cta: "Görüntüle",
                        title: homeCards["Baslamamis"]['title'],
                        img: homeCards["Baslamamis"]['image'],
                        tap: () {
                          Navigator.pushReplacementNamed(
                              context, '/onboarding');
                        }),
                    CardSmall(
                        cta: "Görüntüle",
                        title: homeCards["DevamEden"]['title'],
                        img: homeCards["DevamEden"]['image'],
                        tap: () {
                          Navigator.pushReplacementNamed(
                              context, '/onboarding');
                        }),
                    CardSmall(
                        cta: "Görüntüle",
                        title: homeCards["Tamamlanan"]['title'],
                        img: homeCards["Tamamlanan"]['image'],
                        tap: () {
                          Navigator.pushReplacementNamed(
                              context, '/onboarding');
                        })
                  ],
                ),
                //SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: CardRectangle(
                      cta: "View article",
                      title: homeCards["GunlukBildirim"]['title'],
                      img: homeCards["GunlukBildirim"]['image'],
                      tap: () {
                        Navigator.pushNamed(context, '/datatablescreen');
                      }),
                ),
              ],
            ),
          ),
        ));
  }
}
