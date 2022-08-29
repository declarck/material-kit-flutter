import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

import 'package:material_kit_flutter/constants/Theme.dart';
import 'package:material_kit_flutter/widgets/drawer-tile.dart';

class MaterialDrawer extends StatelessWidget {
  final String currentPage;
  final String aktifAvatar;
  final String aktifKullanici;
  final String aktifKurum;
  final bool kurumSayisiCokMu;

  MaterialDrawer({
    required this.currentPage,
    this.aktifAvatar = 'https://giris.albinasoft.com//App_Themes/AnaTema/Resimler/AdminPage/GhostImage.png',
    this.aktifKullanici = 'Ahmet İstemihan Öztürk',
    this.aktifKurum = 'Doğançay Nakliyat',
    this.kurumSayisiCokMu = true,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          child: Column(children: [
        DrawerHeader(
            margin: EdgeInsets.all(0),
            decoration: BoxDecoration(color: MaterialColors.blueSoftDark),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      aktifAvatar),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0, top: 12.0),
                  child: Text(aktifKullanici,
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
                Container(
                    //padding: EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      //color: MaterialColors.label,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(aktifKurum,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            )),],
                    )),
              ],
            )),
        Expanded(
            child: Container(
          color: MaterialColors.blueSoftDarkest,
          child: ListView(
            padding: EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 8),
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                margin: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  color: currentPage == 'YeniBildirimGirisi'
                      ? MaterialColors.blueSoftDark
                      : currentPage == 'GelenCagriBildirimleri'
                          ? MaterialColors.blueSoftDark
                          : currentPage == 'DevamEdenSureclerim'
                              ? MaterialColors.blueSoftDark
                              : MaterialColors.blueSoftDarker,
                ),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    unselectedWidgetColor:
                        Colors.white70, // here for close state
                    colorScheme: ColorScheme.light(
                      primary: Colors.white70,
                    ), // here for open state in replacement of deprecated accentColor
                    dividerColor:
                        Colors.transparent, // if you want to remove the border
                  ),
                  child: ExpansionTile(
                    leading: Icon(
                      Icons.compare_arrows,
                      color: currentPage == 'YeniBildirimGirisi'
                          ? Colors.white
                          : currentPage == 'GelenCagriBildirimleri'
                              ? Colors.white
                              : currentPage == 'DevamEdenSureclerim'
                                  ? Colors.white
                                  : Colors.white70,
                    ),
                    title: Text('Bildirim İşlemleri',
                        style: TextStyle(
                          fontSize: 15,
                          color: currentPage == 'YeniBildirimGirisi'
                              ? Colors.white
                              : currentPage == 'GelenCagriBildirimleri'
                                  ? Colors.white
                                  : currentPage == 'DevamEdenSureclerim'
                                      ? Colors.white
                                      : Colors.white70,
                        )),
                    children: [
                      DrawerTile(
                          icon: Icons.edit,
                          onTap: () {
                            if (currentPage != "YeniBildirimGirisi")
                              Navigator.pushReplacementNamed(
                                  context, '/yenibildirimgirisi');
                          },
                          title: "Yeni Bildirim Giriş",
                          isSelected: currentPage == "YeniBildirimGirisi"
                              ? true
                              : false),
                      DrawerTile(
                          icon: Icons.search,
                          onTap: () {
                            if (currentPage != "GelenCagriBildirimleri")
                              Navigator.pushReplacementNamed(
                                  context, '/gelencagribildirimleri');
                          },
                          title: "Gelen Çağrı Bildirimleri",
                          isSelected: currentPage == "GelenCagriBildirimleri"
                              ? true
                              : false),
                      DrawerTile(
                          icon: Icons.double_arrow,
                          onTap: () {
                            if (currentPage != "DevamEdenSureclerim")
                              Navigator.pushReplacementNamed(
                                  context, '/devamedensureclerim');
                          },
                          title: "Devam Eden Süreçlerim",
                          isSelected: currentPage == "DevamEdenSureclerim"
                              ? true
                              : false),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                margin: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  color: currentPage == 'SifremiGuncelle'
                      ? MaterialColors.blueSoftDark
                      : currentPage == 'ProfilResmimiGuncelle'
                          ? MaterialColors.blueSoftDark
                          : currentPage == 'YeniTanim'
                              ? MaterialColors.blueSoftDark
                              : currentPage == 'KurumTanimlamalari'
                                  ? MaterialColors.blueSoftDark
                                  : currentPage == 'KullaniciEkle'
                                          ? MaterialColors.blueSoftDark
                                          : currentPage == 'KullaniciListesi'
                                              ? MaterialColors.blueSoftDark
                                              : MaterialColors.blueSoftDarker,
                ),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    unselectedWidgetColor:
                        Colors.white70, // here for close state
                    colorScheme: ColorScheme.light(
                      primary: Colors.white70,
                    ), // here for open state in replacement of deprecated accentColor
                    dividerColor:
                        Colors.transparent, // if you want to remove the border
                  ),
                  child: ExpansionTile(
                    leading: Icon(
                      Icons.settings,
                      color: currentPage == 'SifremiGuncelle'
                          ? Colors.white
                          : currentPage == 'ProfilResmimiGuncelle'
                              ? Colors.white
                              : currentPage == 'YeniTanim'
                                  ? Colors.white
                                  : currentPage == 'KurumTanimlamalari'
                                      ? Colors.white
                                      : currentPage == 'KullaniciEkle'
                                              ? Colors.white
                                              : currentPage ==
                                                      'KullaniciListesi'
                                                  ? Colors.white
                                                  : Colors.white70,
                    ),
                    title: Text('Ayarlar',
                        style: TextStyle(
                          fontSize: 15,
                          //color: Colors.white,
                          color: currentPage == 'SifremiGuncelle'
                              ? Colors.white
                              : currentPage == 'ProfilResmimiGuncelle'
                                  ? Colors.white
                                  : currentPage == 'YeniTanim'
                                      ? Colors.white
                                      : currentPage == 'KurumTanimlamalari'
                                          ? Colors.white
                                          : currentPage == 'KullaniciEkle'
                                                  ? Colors.white
                                                  : currentPage ==
                                                          'KullaniciListesi'
                                                      ? Colors.white
                                                      : Colors.white70,
                        )),
                    children: [
                      DrawerTile(
                          icon: Icons.settings,
                          onTap: () {
                            if (currentPage != "SifremiGuncelle")
                              Navigator.pushReplacementNamed(
                                  context, '/sifremiguncelle');
                          },
                          title: "Şifremi Güncelle",
                          isSelected:
                              currentPage == "SifremiGuncelle" ? true : false),
                      DrawerTile(
                          icon: Icons.settings,
                          onTap: () {
                            if (currentPage != "ProfilResmimiGuncelle")
                              Navigator.pushReplacementNamed(
                                  context, '/profilresmimiguncelle');
                          },
                          title: "Profil Resmimi Güncelle",
                          isSelected: currentPage == "ProfilResmimiGuncelle"
                              ? true
                              : false),
                      DrawerTile(
                          icon: Icons.settings,
                          onTap: () {
                            if (currentPage != "YeniTanim")
                              Navigator.pushReplacementNamed(
                                  context, '/yenitanim');
                          },
                          title: "Yeni Tanım",
                          isSelected:
                              currentPage == "YeniTanim" ? true : false),
                      DrawerTile(
                          icon: Icons.settings,
                          onTap: () {
                            if (currentPage != "KurumTanimlamalari")
                              Navigator.pushReplacementNamed(
                                  context, '/kurumtanimlamalari');
                          },
                          title: "Kurum Tanımlamaları",
                          isSelected: currentPage == "KurumTanimlamalari"
                              ? true
                              : false),
                      DrawerTile(
                          icon: Icons.settings,
                          onTap: () {
                            if (currentPage != "KullaniciEkle")
                              Navigator.pushReplacementNamed(
                                  context, '/kullaniciekle');
                          },
                          title: "Kullanıcı Ekle",
                          isSelected:
                              currentPage == "KullaniciEkle" ? true : false),
                      DrawerTile(
                          icon: Icons.settings,
                          onTap: () {
                            if (currentPage != "KullaniciListesi")
                              Navigator.pushReplacementNamed(
                                  context, '/kullanicilistesi');
                          },
                          title: "Kullanıcı Listesi",
                          isSelected:
                              currentPage == "KullaniciListesi" ? true : false),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                margin: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  color: currentPage == 'Components'
                      ? MaterialColors.blueSoftDark
                      : currentPage == 'Profile'
                          ? MaterialColors.blueSoftDark
                          : currentPage == 'Settings'
                              ? MaterialColors.blueSoftDark
                              : MaterialColors.blueSoftDarker,
                ),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    unselectedWidgetColor:
                        Colors.white70, // here for close state
                    colorScheme: ColorScheme.light(
                      primary: Colors.white70,
                    ), // here for open state in replacement of deprecated accentColor
                    dividerColor:
                        Colors.transparent, // if you want to remove the border
                  ),
                  child: ExpansionTile(
                    leading: Icon(
                      Icons.developer_board,
                      color: currentPage == 'Components'
                          ? Colors.white
                          : currentPage == 'Profile'
                              ? Colors.white
                              : currentPage == 'Settings'
                                  ? Colors.white
                                  : Colors.white70,
                    ),
                    title: Text('Developer Tools',
                        style: TextStyle(
                          fontSize: 15,
                          //color: Colors.white,
                          color: currentPage == 'Components'
                              ? Colors.white
                              : currentPage == 'Profile'
                                  ? Colors.white
                                  : currentPage == 'Settings'
                                      ? Colors.white
                                      : Colors.white70,
                        )),
                    children: [
                      DrawerTile(
                          icon: Icons.developer_board,
                          onTap: () {
                            if (currentPage != "Components")
                              Navigator.pushReplacementNamed(
                                  context, '/components');
                          },
                          title: "Components",
                          isSelected:
                              currentPage == "Components" ? true : false),
                      DrawerTile(
                          icon: Icons.developer_board,
                          onTap: () {
                            if (currentPage != "Profile")
                              Navigator.pushReplacementNamed(
                                  context, '/profile');
                          },
                          title: "Profile",
                          isSelected: currentPage == "Profile" ? true : false),
                      DrawerTile(
                          icon: Icons.developer_board,
                          onTap: () {
                            if (currentPage != "Settings")
                              Navigator.pushReplacementNamed(
                                  context, '/settings');
                          },
                          title: "Settings",
                          isSelected: currentPage == "Settings" ? true : false),
                    ],
                  ),
                ),
              ),
              if (kurumSayisiCokMu == true)
                DrawerTile(
                  icon: Icons.cached,
                  onTap: () {
                    if (currentPage != "KurumDegistir")
                      Navigator.pushReplacementNamed(context, '/kurumdegistir');
                  },
                  title: "Kurum Değiştir",
                  isSelected: currentPage == "KurumDegistir" ? true : false),
              DrawerTile(
                  icon: Icons.exit_to_app,
                  onTap: () {
                    if (currentPage != "Cikis")
                      Navigator.pushReplacementNamed(context, '/onboarding');
                  },
                  title: "Çıkış",
                  isSelected: currentPage == "Cikis" ? true : false),

            ],
          ),
        ))
      ])),
    );
  }
}
