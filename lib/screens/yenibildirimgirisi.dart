import 'package:flutter/material.dart';

import '../constants/Theme.dart';
import '../widgets/drawer.dart';
import '../widgets/navbar.dart';

class YeniBildirimGirisi extends StatefulWidget {
  @override
  _YeniBildirimGirisiState createState() => _YeniBildirimGirisiState();
}

class _YeniBildirimGirisiState extends State<YeniBildirimGirisi> {
  String _chosenValueA = 'Rakamsal Çağrı Dağılım Raporu - Görsel';
  String _chosenValueB = 'PDF';

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: MaterialColors.blueSoftDarkest,
        appBar: Navbar(
          title: "Yeni Bildirim Girişi",
          transparent: true,
        ),
        // key: _scaffoldKey,
        drawer: MaterialDrawer(currentPage: "YeniBildirimGirisi"),
        body: null,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) => AlertDialog(
                //elevation: 25,
                backgroundColor: MaterialColors.blueSoft,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                //scrollable: true,
                title: Text(
                  'Dışa Aktar',
                  style: TextStyle(color: Colors.white70),
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Rapor Tipi:',
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
                              value: _chosenValueA,
                              underline: Container(),
                              items: <String>[
                                'Rakamsal Çağrı Dağılım Raporu - Görsel',
                                'Word',
                                'Excel'
                              ].map((String value) {
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
                                  _chosenValueA = value;
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
                    Row(
                      children: [
                        Text(
                          'Dosya Tipi:',
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
                          return DropdownButton<String>(
                            dropdownColor: MaterialColors.blueSoftDarker,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            iconEnabledColor: Colors.white70,
                            iconDisabledColor: Colors.white70,
                            value: _chosenValueB,
                            underline: Container(),
                            items: <String>['PDF', 'Word', 'Excel']
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
                                _chosenValueB = value;
                              });
                            },
                          );
                        }),
                      ],
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'Vazgeç',
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'Raporla',
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  )
                ],
              ),
            );
          },
          backgroundColor: Colors.white70,
          child: const Icon(
            Icons.download,
            color: MaterialColors.blueSoft,
          ),
        ),
      );
}
