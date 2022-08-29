import 'package:flutter/material.dart';
import 'package:material_kit_flutter/constants/Theme.dart';
import 'package:material_kit_flutter/widgets/drawer.dart';

class YeniBildirimGirisi extends StatelessWidget {
  String _bildirimKanali = '[Seçiniz]';
  //String _agacYapisi = '[Seçiniz]';
  String _il = '[Seçiniz]';
  String _yapi = '[Seçiniz]';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MaterialColors.blueSoftDarkest,
        appBar: AppBar(
          title: Text('Yeni Bildirim Girişi'),
          backgroundColor: MaterialColors.blueSoftDarker,
        ),
        drawer: MaterialDrawer(currentPage: "YeniBildirimGirisi"),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Bildirim Kanalı
                Row(
                  children: [
                    Text(
                      'Bildirim Kanalı',
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
                        child: DropdownButton<String>(
                          isExpanded: true,
                          dropdownColor: MaterialColors.blueSoftDarker,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          iconEnabledColor: Colors.white70,
                          iconDisabledColor: Colors.white70,
                          value: _bildirimKanali,
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
                          onChanged: (String? value) {
                            dropDownState(() {
                              _bildirimKanali = value!;
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
                //Bildirim
                Row(
                  children: [
                    Text(
                      'Bildirim',
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
                //Kurum Ağaç Yapısı
                Row(
                  children: [
                    Text(
                      'Kurum Ağaç Yapısı',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        height: 20,
                        color: Colors.deepPurple[200],
                        child: Text('Buraya TreeView Gelecek'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //İlgili Kişi Adı Soyadı
                Row(
                  children: [
                    Text(
                      'İlgili Kişi Adı Soyadı',
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
                //İlgili Kişi Telefon
                Row(
                  children: [
                    Text(
                      'İlgili Kişi Telefon',
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
                //İlgili Kişi E-Posta
                Row(
                  children: [
                    Text(
                      'İlgili Kişi E-Posta',
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
                          onChanged: (String? value) {
                            dropDownState(() {
                              _il = value!;
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
                          onChanged: (String? value) {
                            dropDownState(() {
                              _yapi = value!;
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
                //Butonlar
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton(
                      onPressed: () => Navigator.pushReplacementNamed(context, '/detaylibildirimarama'),
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
                      onPressed: () => Navigator.pushReplacementNamed(context, '/detaylibildirimarama'),
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        side: BorderSide(width: 2, color: Colors.lightGreen),
                      ),
                      child: Text(
                        'Ekle',
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
