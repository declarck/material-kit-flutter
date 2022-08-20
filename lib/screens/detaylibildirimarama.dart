import 'package:flutter/material.dart';
import 'package:material_kit_flutter/constants/Theme.dart';
import 'package:material_kit_flutter/widgets/card-horizontal.dart';
import 'package:material_kit_flutter/widgets/card-rectangle.dart';
import 'package:material_kit_flutter/widgets/card-small.dart';
import 'package:material_kit_flutter/widgets/drawer.dart';
import 'package:material_kit_flutter/widgets/navbar.dart';

final Map<String, Map<String, String>> homeCards = {
  "Bildirimler": {
    "title": "BİLDİRİMLER\narasında arama yapabileceğinizi biliyor muydunuz?",
    "image": "https://i.im.ge/2022/08/18/OsLMWG.bildirimler2.jpg",
  },
  "Raporlar": {
    "title":
        "RAPORLARINIZI\nExcel, Word, Pdf dosyasına aktarmak ister misiniz?",
    "image": "https://i.im.ge/2022/08/18/OsIny0.rapor3.jpg",
  },
  "Baslamamis": {
    "title": "Takibi başlamamış bildirimler.",
    "image": "https://i.im.ge/2022/08/18/OsIemL.baslamamis3.jpg",
  },
  "DevamEden": {
    "title": "Takibi devam eden bildirimler.",
    "image": "https://i.im.ge/2022/08/18/OsIGOc.devameden3.jpg",
  },
  "Tamamlanan": {
    "title": "Takibi tamamlanan bildirimler.",
    "image": "https://i.im.ge/2022/08/18/OsI4HT.tamamlanan3.jpg",
  },
  "GunlukBildirim": {
    "title": "28 adet bildirim bugün kaydedilmiştir.",
    "image": null,
  },
};

class DetayliBildirimArama extends StatelessWidget {
  // final GlobalKey _scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Navbar(
          // title: "Home",
          // searchBar: true,
          // categoryOne: "Categories",
          // categoryTwo: "Best Deals",
          title: "Detaylı Bildirim Arama",
          transparent: true,
        ),
        backgroundColor: MaterialColors.blueSoftDarkest,
        // key: _scaffoldKey,
        drawer: MaterialDrawer(currentPage: "DetayliBildirimArama"),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
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
                        Navigator.pushReplacementNamed(context, '/pro');
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
                        Navigator.pushReplacementNamed(context, '/pro');
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
                          Navigator.pushReplacementNamed(context, '/pro');
                        }),
                    CardSmall(
                        cta: "Görüntüle",
                        title: homeCards["DevamEden"]['title'],
                        img: homeCards["DevamEden"]['image'],
                        tap: () {
                          Navigator.pushReplacementNamed(context, '/pro');
                        }),
                    CardSmall(
                        cta: "Görüntüle",
                        title: homeCards["Tamamlanan"]['title'],
                        img: homeCards["Tamamlanan"]['image'],
                        tap: () {
                          Navigator.pushReplacementNamed(context, '/pro');
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
                        Navigator.pushNamed(context, '/datatable');
                      }),
                ),
              ],
            ),
          ),
        ));
  }
}
