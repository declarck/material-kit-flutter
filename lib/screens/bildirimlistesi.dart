import 'package:flutter/material.dart';
import 'package:material_kit_flutter/datas/data.dart';
import 'package:material_kit_flutter/datas/datas.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

import '../constants/Theme.dart';
import '../tools/create-pdf.dart';
import '../widgets/datatable.dart';

class BildirimListesi extends StatefulWidget {
  @override
  _BildirimListesiState createState() => _BildirimListesiState();
}

class _BildirimListesiState extends State<BildirimListesi> {
  List<Data> datas;
  int sortColumnIndex;
  bool isAscending = false;
  String _chosenValueA = 'Rakamsal Çağrı Dağılım Raporu - Görsel';
  String _chosenValueB = 'PDF';

  @override
  void initState() {
    super.initState();
    this.datas = List.of(allDatas);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: MaterialColors.blueSoftDarkest,
        appBar: AppBar(
          backgroundColor: MaterialColors.blueSoftDarker,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.of(context).pop(),
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: const Text('Bildirim Listesi'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: GestureDetector(
                onTap: () {
                  Actions.find(context);
                },
                child: Icon(Icons.search),
              ),
            ),
          ],
        ),
        body: ScrollableWidget(
          child: buildDataTable(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) => AlertDialog(
                elevation: 25,
                backgroundColor: MaterialColors.blueSoftDarker,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
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
                          'Rapor Tipi',
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
                                'Rakamsal Çağrı Dağılım Raporu - Sıralı',
                                'Rakamsal Çağrı Dağılım Raporu - Büyük Veri',
                                'Çağrı Detaylı Liste Raporu',
                                'İstatistik',
                                'Kurum Yapısı Bazlı İstatistik Raporu',
                                'Takip Süreci İzleme Raporu',
                                'Kurum İçi Kategorizasyon Raporu'
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
                          'Dosya Tipi',
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
                            ),
                          );
                        }),
                      ],
                    ),
                  ],
                ),
                actions: [
                  OutlinedButton(
                    onPressed: () => Navigator.pop(context),
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
                  OutlinedButton(
                    onPressed: () => Navigator.pop(context),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      side: BorderSide(width: 2, color: Colors.lightGreen),
                    ),
                    child: Text(
                      'Raporla',
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ),
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

  Widget buildDataTable() {
    final columns = [
      'Çağrı Id',
      'Arayan Talep',
      'Yapılan İşlem',
      'Arayan Kişi',
      'Çağrı Tarihi',
      'Takip Durumu',
      'Geri Dönüş Süreci',
      'Kaynak',
      'Detay',
    ];

    return DataTable(
      sortAscending: isAscending,
      sortColumnIndex: sortColumnIndex,
      columns: getColumns(columns),
      rows: getRows(datas),
    );
  }

  List<DataColumn> getColumns(List<String> columns) => columns
      .map((String column) => DataColumn(
            label: Text(
              column,
              style:
                  TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
            ),
            onSort: onSort,
          ))
      .toList();

  List<DataRow> getRows(List<Data> users) => datas.map((Data data) {
        final cells = [
          data.cagriId,
          data.arayanTalep,
          data.yapilanIslem,
          data.arayanKisi,
          data.cagriTarihi,
          data.takipDurumu,
          data.geriDonusSureci,
          data.kaynak,
          data.detay,
        ];
        return DataRow(cells: getCells(cells));
      }).toList();

  List<DataCell> getCells(List<dynamic> cells) => cells
      .map((data) => DataCell(Text(
            '$data',
            style: TextStyle(color: Colors.white70),
          )))
      .toList();

  void onSort(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      datas.sort((user1, user2) =>
          compareString(ascending, user1.cagriId, user2.cagriId));
    } else if (columnIndex == 1) {
      datas.sort((user1, user2) =>
          compareString(ascending, user1.arayanTalep, user2.arayanTalep));
    } else if (columnIndex == 2) {
      datas.sort((user1, user2) =>
          compareString(ascending, user1.yapilanIslem, user2.yapilanIslem));
    } else if (columnIndex == 3) {
      datas.sort((user1, user2) =>
          compareString(ascending, user1.arayanKisi, user2.arayanKisi));
    } else if (columnIndex == 4) {
      datas.sort((user1, user2) =>
          compareString(ascending, user1.cagriTarihi, user2.cagriTarihi));
    } else if (columnIndex == 5) {
      datas.sort((user1, user2) =>
          compareString(ascending, user1.takipDurumu, user2.takipDurumu));
    } else if (columnIndex == 6) {
      datas.sort((user1, user2) => compareString(
          ascending, user1.geriDonusSureci, user2.geriDonusSureci));
    } else if (columnIndex == 7) {
      datas.sort((user1, user2) =>
          compareString(ascending, user1.kaynak, user2.kaynak));
    } else if (columnIndex == 8) {
      datas.sort(
          (user1, user2) => compareString(ascending, user1.detay, user2.detay));
    }

    setState(() {
      this.sortColumnIndex = columnIndex;
      this.isAscending = ascending;
    });
  }

  int compareString(bool ascending, String value1, String value2) =>
      ascending ? value1.compareTo(value2) : value2.compareTo(value1);

  Future<void> createPDF() async {
    PdfDocument document = PdfDocument();
    final page = document.pages.add();

    page.graphics.drawString(
        'This is the title!', PdfStandardFont(PdfFontFamily.helvetica, 30));

    // page.graphics.drawImage(
    //     PdfBitmap(await _readImageData('Pdf_Succinctly.jpg')),
    //     Rect.fromLTWH(0, 100, 440, 550));

    PdfGrid grid = PdfGrid();
    grid.style = PdfGridStyle(
        font: PdfStandardFont(PdfFontFamily.helvetica, 30),
        cellPadding: PdfPaddings(left: 5, right: 2, top: 2, bottom: 2));

    grid.columns.add(count: 9);
    grid.headers.add(1);

    PdfGridRow header = grid.headers[0];
    header.cells[0].value = 'Cagri Id';
    header.cells[1].value = 'Arayan Talep';
    header.cells[2].value = 'Yapilan Islem';
    header.cells[3].value = 'Arayan Kisi';
    header.cells[4].value = 'Cagri Tarihi';
    header.cells[5].value = 'Takip Durumu';
    header.cells[6].value = 'Geri Donus Sureci';
    header.cells[7].value = 'Kaynak';
    header.cells[8].value = 'Detay';

    PdfGridRow row = grid.rows.add();
    row.cells[0].value = 'Cagri Id';
    row.cells[1].value = 'Arayan Talep';
    row.cells[2].value = 'Yapilan Islem';
    row.cells[3].value = 'Arayan Kisi';
    row.cells[4].value = 'Cagri Tarihi';
    row.cells[5].value = 'Takip Durumu';
    row.cells[6].value = 'Geri Donus Sureci';
    row.cells[7].value = 'Kaynak';
    row.cells[8].value = 'Detay';

    row = grid.rows.add();
    row.cells[0].value = 'Cagri Id';
    row.cells[1].value = 'Arayan Talep';
    row.cells[2].value = 'Yapilan Islem';
    row.cells[3].value = 'Arayan Kisi';
    row.cells[4].value = 'Cagri Tarihi';
    row.cells[5].value = 'Takip Durumu';
    row.cells[6].value = 'Geri Donus Sureci';
    row.cells[7].value = 'Kaynak';
    row.cells[8].value = 'Detay';

    row = grid.rows.add();
    row.cells[0].value = 'Cagri Id';
    row.cells[1].value = 'Arayan Talep';
    row.cells[2].value = 'Yapilan Islem';
    row.cells[3].value = 'Arayan Kisi';
    row.cells[4].value = 'Cagri Tarihi';
    row.cells[5].value = 'Takip Durumu';
    row.cells[6].value = 'Geri Donus Sureci';
    row.cells[7].value = 'Kaynak';
    row.cells[8].value = 'Detay';

    grid.draw(
        page: document.pages.add(), bounds: const Rect.fromLTWH(0, 0, 0, 0));

    List<int> bytes = await document.save();
    document.dispose();

    saveAndLaunchFile(bytes, 'Output.pdf');
  }
}
