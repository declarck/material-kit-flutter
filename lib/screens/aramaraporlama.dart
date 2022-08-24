import 'package:flutter/material.dart';
import 'package:material_kit_flutter/constants/Theme.dart';

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

class AramaRaporlama extends StatelessWidget {
  String _agacYapisi = '[Seçiniz]';
  String _il = '[Seçiniz]';
  String _yapi = '[Seçiniz]';
  String _surecDurumu = '[Seçiniz]';
  String _geriDonus = '[Seçiniz]';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MaterialColors.blueSoftDarkest,
        appBar: AppBar(
          title: Text('Arama ve Raporlama'),
          backgroundColor: MaterialColors.blueSoftDarker,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Çağrı ID
                Row(
                  children: [
                    Text(
                      'Çağrı ID',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white70),
                    ),
                  ],
                ),
                Row(
                  children: [
                    StatefulBuilder(builder:
                        (BuildContext context, StateSetter dropDownState) {
                      return Expanded(
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          style: TextStyle(color: Colors.white70),
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: MaterialColors.blueSoft,
                                  ))),
                        ),
                      );
                    }),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //Tarih Aralığı
                Row(
                  children: [
                    Text(
                      'Tarih Aralığı',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    StatefulBuilder(builder:
                        (BuildContext context, StateSetter dropDownState) {
                      return Expanded(
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          style: TextStyle(color: Colors.white70),
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: MaterialColors.blueSoft,
                                  ))),
                        ),
                      );
                    }),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //Anahtar Kelime
                Row(
                  children: [
                    Text(
                      'Anahtar Kelime',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    StatefulBuilder(builder:
                        (BuildContext context, StateSetter dropDownState) {
                      return Expanded(
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          style: TextStyle(color: Colors.white70),
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: MaterialColors.blueSoft,
                                  ))),
                        ),
                      );
                    }),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //Yapılan İşlem
                Row(
                  children: [
                    Text(
                      'Yapılan İşlem',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    StatefulBuilder(builder:
                        (BuildContext context, StateSetter dropDownState) {
                      return Expanded(
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          style: TextStyle(color: Colors.white70),
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: MaterialColors.blueSoft,
                                  ))),
                        ),
                      );
                    }),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //Ağaç Yapısı
                Row(
                  children: [
                    Text(
                      'Ağaç Yapısı',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    StatefulBuilder(builder:
                        (BuildContext context, StateSetter dropDownState) {
                      return Expanded(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          dropdownColor: MaterialColors.blueSoftDarker,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          iconEnabledColor: Colors.white70,
                          iconDisabledColor: Colors.white70,
                          value: _agacYapisi,
                          underline: Container(),
                          items: <String>['[Seçiniz]','Seçenek 1', 'Seçenek 2', 'Seçenek 3']
                              .map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(
                                value,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white70,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String value) {
                            dropDownState(() {
                              _agacYapisi = value;
                            });
                          },
                        ),
                      );
                    }),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //Arayan Adı Soyadı
                Row(
                  children: [
                    Text(
                      'Arayan Adı Soyadı',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    StatefulBuilder(builder:
                        (BuildContext context, StateSetter dropDownState) {
                      return Expanded(
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          style: TextStyle(color: Colors.white70),
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: MaterialColors.blueSoft,
                                  ))),
                        ),
                      );
                    }),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //Arayan Telefon
                Row(
                  children: [
                    Text(
                      'Arayan Kişi Telefon',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    StatefulBuilder(builder:
                        (BuildContext context, StateSetter dropDownState) {
                      return Expanded(
                        child: TextField(
                          style: TextStyle(color: Colors.white70),
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: MaterialColors.blueSoft,
                                  ))),
                        ),
                      );
                    }),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //İl
                Row(
                  children: [
                    Text(
                      'İl',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    StatefulBuilder(builder:
                        (BuildContext context, StateSetter dropDownState) {
                      return Expanded(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          dropdownColor: MaterialColors.blueSoftDarker,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          iconEnabledColor: Colors.white70,
                          iconDisabledColor: Colors.white70,
                          value: _il,
                          underline: Container(),
                          items: <String>[
                            '[Seçiniz]',
                            'Adana','Adıyaman', 'Afyon', 'Ağrı', 'Amasya', 'Ankara', 'Antalya', 'Artvin',
                            'Aydın', 'Balıkesir','Bilecik', 'Bingöl', 'Bitlis', 'Bolu', 'Burdur', 'Bursa', 'Çanakkale',
                            'Çankırı', 'Çorum','Denizli','Diyarbakır', 'Edirne', 'Elazığ', 'Erzincan', 'Erzurum ', 'Eskişehir',
                            'Gaziantep', 'Giresun','Gümüşhane', 'Hakkari', 'Hatay', 'Isparta', 'Mersin', 'İstanbul', 'İzmir',
                            'Kars', 'Kastamonu', 'Kayseri','Kırklareli', 'Kırşehir', 'Kocaeli', 'Konya', 'Kütahya ', 'Malatya',
                            'Manisa', 'Kahramanmaraş', 'Mardin', 'Muğla', 'Muş', 'Nevşehir', 'Niğde', 'Ordu', 'Rize', 'Sakarya',
                            'Samsun', 'Siirt', 'Sinop', 'Sivas', 'Tekirdağ', 'Tokat', 'Trabzon  ', 'Tunceli', 'Şanlıurfa', 'Uşak',
                            'Van', 'Yozgat', 'Zonguldak', 'Aksaray', 'Bayburt ', 'Karaman', 'Kırıkkale', 'Batman', 'Şırnak',
                            'Bartın', 'Ardahan', 'Iğdır', 'Yalova', 'Karabük ', 'Kilis', 'Osmaniye ', 'Düzce'
                          ]
                              .map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(
                                value,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white70,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String value) {
                            dropDownState(() {
                              _il = value;
                            });
                          },
                        ),
                      );
                    }),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //Yapı
                Row(
                  children: [
                    Text(
                      'Yapı',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    StatefulBuilder(builder:
                        (BuildContext context, StateSetter dropDownState) {
                      return Expanded(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          dropdownColor: MaterialColors.blueSoftDarker,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          iconEnabledColor: Colors.white70,
                          iconDisabledColor: Colors.white70,
                          value: _yapi,
                          underline: Container(),
                          items: <String>['[Seçiniz]','Seçenek 1', 'Seçenek 2', 'Seçenek 3']
                              .map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(
                                value,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white70,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String value) {
                            dropDownState(() {
                              _yapi = value;
                            });
                          },
                        ),
                      );
                    }),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //Süreç Durumu
                Row(
                  children: [
                    Text(
                      'Süreç Durumu',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    StatefulBuilder(builder:
                        (BuildContext context, StateSetter dropDownState) {
                      return Expanded(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          dropdownColor: MaterialColors.blueSoftDarker,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          iconEnabledColor: Colors.white70,
                          iconDisabledColor: Colors.white70,
                          value: _surecDurumu,
                          underline: Container(),
                          items: <String>[
                            '[Seçiniz]',
                            'Yeni',
                            'Takip Süreci Devam Ediyor',
                            'Takip Süreci Tamamlandı',
                            'Takip Süreci Operatör Tarafından Sonlandırıldı'
                          ]
                              .map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(
                                value,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white70,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String value) {
                            dropDownState(() {
                              _surecDurumu = value;
                            });
                          },
                        ),
                      );
                    }),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //Geri Dönüş?
                Row(
                  children: [
                    Text(
                      'Arayan Geri Dönüş Bekliyor mu?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    StatefulBuilder(builder:
                        (BuildContext context, StateSetter dropDownState) {
                      return Expanded(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          dropdownColor: MaterialColors.blueSoftDarker,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          iconEnabledColor: Colors.white70,
                          iconDisabledColor: Colors.white70,
                          value: _geriDonus,
                          underline: Container(),
                          items: <String>[
                            '[Seçiniz]',
                            'İlgili Kişi Geri Dönüş Beklemiyor',
                            'İlgili Kişi Geri Dönüş Bekliyor',
                            'İlgili Kişi Geri Dönüş Bekliyordu - Geri Dönüş Sağlandı'
                          ]
                              .map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(
                                value,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white70,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String value) {
                            dropDownState(() {
                              _geriDonus = value;
                            });
                          },
                        ),
                      );
                    }),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //Takip Tamamlama Tarih Aralığı
                Row(
                  children: [
                    Text(
                      'Takip Tamamlama Tarih Aralığı',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    StatefulBuilder(builder:
                        (BuildContext context, StateSetter dropDownState) {
                      return Expanded(
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          style: TextStyle(color: Colors.white70),
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: MaterialColors.blueSoft,
                                  ))),
                        ),
                      );
                    }),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //Butonlar
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton(
                      onPressed: () => Navigator.pushNamed(context, '/detaylibildirimarama'),
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        side: BorderSide(width: 2, color: Colors.deepOrange),
                      ),
                      child: Text(
                        'Vazgeç',
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(
                      onPressed: () => Navigator.pushNamed(context, '/datatablescreen'),
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        side: BorderSide(width: 2, color: Colors.lightGreen),
                      ),
                      child: Text(
                        'Arama Yap',
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
