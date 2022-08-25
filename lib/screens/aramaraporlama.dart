import 'package:flutter/material.dart';
import 'package:material_kit_flutter/constants/Theme.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class AramaRaporlama extends StatefulWidget {
  @override
  State<AramaRaporlama> createState() => _AramaRaporlamaState();
}

class _AramaRaporlamaState extends State<AramaRaporlama> {
  String _agacYapisi = '[Seçiniz]';
  String _il = '[Seçiniz]';
  String _yapi = '[Seçiniz]';
  String _surecDurumu = '[Seçiniz]';
  String _geriDonus = '[Seçiniz]';
  //DateTime _tarihAraligi = DateTime.now();
  // String _range = '';
  // void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
  //   setState(() {
  //     _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
  //     // ignore: lines_longer_than_80_chars
  //         ' ${DateFormat('dd/MM/yyyy').format(
  //         args.value.endDate ?? args.value.startDate)}';
  //   });
  // }
  DateTimeRange dateRange = DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now(),
      );

  @override
  Widget build(BuildContext context) {
    final start = dateRange.start;
    final end = dateRange.end;
    final difference = dateRange.duration;
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
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: MaterialColors.blueSoftDarker),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Çağrı ID',
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //Tarih Aralığı
                // GestureDetector(
                //   onTap: (){
                //     var initialDate = DateTime.now();
                //     showDatePicker(context: context,
                //       initialDate: initialDate,
                //       firstDate: DateTime(2000),
                //       lastDate: initialDate,
                //     );
                //   },
                //   child: Container(
                //     padding: EdgeInsets.all(10),
                //     decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(4),
                //         color: MaterialColors.blueSoftDarker),
                //     child: Column(
                //       children: [
                //         Row(
                //           children: [
                //             Text(
                //               'Tarih Aralığı',
                //               style: TextStyle(
                //                 fontWeight: FontWeight.bold,
                //                 color: Colors.white70,
                //               ),
                //             ),
                //           ],
                //         ),
                //         Row(
                //           children: [
                //             StatefulBuilder(builder:
                //                 (BuildContext context, StateSetter dropDownState) {
                //               return Padding(
                //                 padding: EdgeInsets.only(top:20),
                //                 child: Text(
                //                   DateFormat('d MMMM yyy, EEEE').format(_tarihAraligi),
                //                   style: TextStyle(
                //                     //fontWeight: FontWeight.bold,
                //                     color: Colors.white70,
                //                   ),
                //                 ),
                //               );
                //             }),
                //           ],
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: MaterialColors.blueSoftDarker),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tarih Aralığı: ${difference.inDays} gün',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                        )),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: ElevatedButton(
                            child: Text('${start.day}/${start.month}/${start.year}'),
                            onPressed: pickDateRange,
                          ),
                          ),
                          SizedBox(width: 12),
                          Expanded(child: ElevatedButton(
                            child: Text('${end.day}/${end.month}/${end.year}'),
                            onPressed: pickDateRange,
                          ),
                          ),
                        ],
                      )
                      // Text('$_range',
                      //   style: TextStyle(
                      //     color: Colors.white70,
                      //   )),
                      // StatefulBuilder(builder:
                      //     (BuildContext context, StateSetter dropDownState) {
                      //   return Padding(
                      //     padding: EdgeInsets.only(top:10),
                      //     child: SfDateRangePicker(
                      //       enableMultiView: true,
                      //       navigationDirection: DateRangePickerNavigationDirection.vertical,
                      //       viewSpacing: 10,
                      //       headerStyle: DateRangePickerHeaderStyle(
                      //         textAlign: TextAlign.center,
                      //           textStyle: TextStyle(
                      //               color: Colors.white70),
                      //       ),
                      //       rangeTextStyle: TextStyle(color: MaterialColors.blueSoftLightest),
                      //       monthViewSettings: DateRangePickerMonthViewSettings(
                      //         viewHeaderStyle: DateRangePickerViewHeaderStyle(
                      //           textStyle: TextStyle(
                      //             color: Colors.white70),
                      //         ),
                      //       ),
                      //       monthCellStyle: DateRangePickerMonthCellStyle(
                      //           textStyle: TextStyle(
                      //               color: Colors.white70),
                      //       ),
                      //       yearCellStyle: DateRangePickerYearCellStyle(
                      //         textStyle: TextStyle(
                      //             color: Colors.white70),
                      //       ),
                      //       onSelectionChanged: _onSelectionChanged,
                      //       selectionMode: DateRangePickerSelectionMode.range,
                      //       initialSelectedRange: PickerDateRange(
                      //           DateTime.now().subtract(const Duration(days: 4)),
                      //           DateTime.now().add(const Duration(days: 3)),
                      //       ),
                      //     ),
                      //   );
                      // }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //Anahtar Kelime
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: MaterialColors.blueSoftDarker),
                  child: Column(
                    children: [
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //Yapılan İşlem
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: MaterialColors.blueSoftDarker),
                  child: Column(
                    children: [
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //Ağaç Yapısı
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: MaterialColors.blueSoftDarker),
                  child: Column(
                    children: [
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //Arayan Adı Soyadı
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: MaterialColors.blueSoftDarker),
                  child: Column(
                    children: [
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //Arayan Telefon
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: MaterialColors.blueSoftDarker),
                  child: Column(
                    children: [
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //İl
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: MaterialColors.blueSoftDarker),
                  child: Column(
                    children: [
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //Yapı
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: MaterialColors.blueSoftDarker),
                  child: Column(
                    children: [
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //Süreç Durumu
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: MaterialColors.blueSoftDarker),
                  child: Column(
                    children: [
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //Geri Dönüş?
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: MaterialColors.blueSoftDarker),
                  child: Column(
                    children: [
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //Takip Tamamlama Tarih Aralığı
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: MaterialColors.blueSoftDarker),
                  child: Column(
                    children: [
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
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
                      onPressed: () => Navigator.pushNamed(context, '/bildirimlistesi'),
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
  
  Future pickDateRange() async{
    DateTimeRange newDateRange = await showDateRangePicker(context: context,
        initialDateRange: dateRange,
        firstDate: DateTime(2000),
        lastDate: DateTime.now()
    );
    if (newDateRange == null) return;
    setState(() => dateRange = newDateRange);
  }
}
