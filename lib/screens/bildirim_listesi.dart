import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../constants/theme.dart';

class BildirimListesi extends StatefulWidget {
  @override
  _BildirimListesiState createState() => _BildirimListesiState();
}

class _BildirimListesiState extends State<BildirimListesi> {
  String _chosenValueA = 'Rakamsal Çağrı Dağılım Raporu - Görsel';
  String _chosenValueB = 'PDF';

  late List<Bildirim> _bildirimler;
  late BildirimDataSource _bildirimDataSource;

  @override
  void initState() {
    super.initState();
    _bildirimler = getBildirimData();
    _bildirimDataSource = BildirimDataSource(_bildirimler);
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
        body: SfDataGrid(
          allowSorting: true,
          selectionMode: SelectionMode.multiple,
          source: _bildirimDataSource,
          columns: [
            GridColumn(
                columnName: 'detay',
                label: Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: Text(
                    'Detay',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white70),
                  ),
                )),
            GridColumn(
                columnName: 'cagriid',
                label: Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: Text(
                    'Çağrı ID',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white70),
                  ),
                )),
            GridColumn(
                columnName: 'arayantakip',
                label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: Text(
                      'Arayan Takip',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white70),
                    ))),
            GridColumn(
                columnName: 'yapilanislem',
                label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: Text(
                      'Yapılan İşlem',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white70),
                    ))),
            GridColumn(
                columnName: 'arayankisi',
                label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: Text(
                      'Arayan Kişi',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white70),
                    ))),
            GridColumn(
                columnName: 'cagritarihi',
                label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: Text(
                      'Çağrı Tarihi',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white70),
                    ))),
            GridColumn(
                columnName: 'takipdurumu',
                label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: Text(
                      'Takip Durumu',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white70),
                    ))),
            GridColumn(
                columnName: 'geridonussureci',
                label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: Text(
                      'Geri Dönüş Süreci',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white70),
                    ))),
            GridColumn(
                columnName: 'kaynak',
                label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: Text(
                      'Kaynak',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white70),
                    ))),
          ],
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
                              onChanged: (String? value) {
                                dropDownState(() {
                                  _chosenValueA = value!;
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
                              onChanged: (String? value) {
                                dropDownState(() {
                                  _chosenValueB = value!;
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

  List<Bildirim> getBildirimData() {
    return [
      Bildirim(
          'AAAAAAAAAAAAAAAAAAAA',
          'BBBBBBBBBBBBBBBBBBBB',
          'CCCCCCCCCCCCCCCCCCCC',
          'DDDDDDDDDDDDDDDDDDDD',
          'EEEEEEEEEEEEEEEEEEEE',
          'FFFFFFFFFFFFFFFFFFFF',
          'GGGGGGGGGGGGGGGGGGGG',
          'HHHHHHHHHHHHHHHHHHHH'),
      Bildirim('AAAAAAAAAA', 'BBBBBBBBBB', 'CCCCCCCCCC', 'DDDDDDDDDD',
          'EEEEEEEEEE', 'FFFFFFFFFF', 'GGGGGGGGGG', 'HHHHHHHHHH'),
      Bildirim('AAAAAAAAAA', 'BBBBBBBBBB', 'CCCCCCCCCC', 'DDDDDDDDDD',
          'EEEEEEEEEE', 'FFFFFFFFFF', 'GGGGGGGGGG', 'HHHHHHHHHH'),
    ];
  }
}

class BildirimDataSource extends DataGridSource {
  BildirimDataSource(List<Bildirim> bildirimler) {
    dataGridRows = bildirimler
        .map<DataGridRow>((dataGridRow) => DataGridRow(cells: [
              const DataGridCell<Widget>(columnName: 'detay', value: null),
              DataGridCell<String>(
                  columnName: 'cagriid', value: dataGridRow.cagriId),
              DataGridCell<String>(
                  columnName: 'arayantakip', value: dataGridRow.arayanTakip),
              DataGridCell<String>(
                  columnName: 'yapilanislem', value: dataGridRow.yapilanIslem),
              DataGridCell<String>(
                  columnName: 'arayankisi', value: dataGridRow.arayanKisi),
              DataGridCell<String>(
                  columnName: 'cagritarihi', value: dataGridRow.cagriTarihi),
              DataGridCell<String>(
                  columnName: 'takipdurumu', value: dataGridRow.takipDurumu),
              DataGridCell<String>(
                  columnName: 'geridonussureci',
                  value: dataGridRow.geriDonusSureci),
              DataGridCell<String>(
                  columnName: 'kaynak', value: dataGridRow.kaynak),
            ]))
        .toList();
  }

  late List<DataGridRow> dataGridRows;
  @override
  List<DataGridRow> get rows => dataGridRows;
  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataGridCell) {
      return Container(
          alignment: Alignment.center,
          //padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: dataGridCell.columnName == 'detay'
              ? LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                  return OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        side: BorderSide(width: 2, color: Colors.lightGreen)),
                    onPressed: () {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) => AlertDialog(
                                backgroundColor: MaterialColors.blueSoftDarker,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  //mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Çağrı Id:',
                                        style: TextStyle(
                                            color: MaterialColors
                                                .blueSoftLighter)),
                                    Text(
                                        '${row.getCells()[1].value.toString()}',
                                        style:
                                            TextStyle(color: Colors.white70)),
                                    Divider(
                                        color: MaterialColors.blueSoftLighter,
                                        thickness: 1),
                                    Text('Arayan Talep:',
                                        style: TextStyle(
                                            color: MaterialColors
                                                .blueSoftLighter)),
                                    Text(
                                        '${row.getCells()[2].value.toString()}',
                                        style:
                                            TextStyle(color: Colors.white70)),
                                    Divider(
                                        color: MaterialColors.blueSoftLighter,
                                        thickness: 1),
                                    Text('Yapılan İşlem:',
                                        style: TextStyle(
                                            color: MaterialColors
                                                .blueSoftLighter)),
                                    Text(
                                        '${row.getCells()[3].value.toString()}',
                                        style:
                                            TextStyle(color: Colors.white70)),
                                    Divider(
                                        color: MaterialColors.blueSoftLighter,
                                        thickness: 1),
                                    Text('Arayan Kişi:',
                                        style: TextStyle(
                                            color: MaterialColors
                                                .blueSoftLighter)),
                                    Text(
                                        '${row.getCells()[4].value.toString()}',
                                        style:
                                            TextStyle(color: Colors.white70)),
                                    Divider(
                                        color: MaterialColors.blueSoftLighter,
                                        thickness: 1),
                                    Text('Çağrı Tarihi:',
                                        style: TextStyle(
                                            color: MaterialColors
                                                .blueSoftLighter)),
                                    Text(
                                        '${row.getCells()[5].value.toString()}',
                                        style:
                                            TextStyle(color: Colors.white70)),
                                    Divider(
                                        color: MaterialColors.blueSoftLighter,
                                        thickness: 1),
                                    Text('Takip Durumu:',
                                        style: TextStyle(
                                            color: MaterialColors
                                                .blueSoftLighter)),
                                    Text(
                                        '${row.getCells()[6].value.toString()}',
                                        style:
                                            TextStyle(color: Colors.white70)),
                                    Divider(
                                        color: MaterialColors.blueSoftLighter,
                                        thickness: 1),
                                    Text('Geri Dönüş Süreci:',
                                        style: TextStyle(
                                            color: MaterialColors
                                                .blueSoftLighter)),
                                    Text(
                                        '${row.getCells()[7].value.toString()}',
                                        style:
                                            TextStyle(color: Colors.white70)),
                                    Divider(
                                        color: MaterialColors.blueSoftLighter,
                                        thickness: 1),
                                    Text('Kaynak:',
                                        style: TextStyle(
                                            color: MaterialColors
                                                .blueSoftLighter)),
                                    Text(
                                        '${row.getCells()[8].value.toString()}',
                                        style:
                                            TextStyle(color: Colors.white70)),
                                  ],
                                ),
                                actions: [
                                  OutlinedButton(
                                    onPressed: () => Navigator.pop(context),
                                    style: OutlinedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      side: BorderSide(
                                          width: 2, color: Colors.deepOrange),
                                    ),
                                    child: Text(
                                      'Kapat',
                                      style: TextStyle(
                                        color: Colors.white70,
                                      ),
                                    ),
                                  ),
                                ],
                              ));
                    },
                    child: const Text(
                      'Detay',
                      style: TextStyle(color: Colors.white70),
                    ),
                  );
                })
              : Text(
                  dataGridCell.value.toString(),
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white70),
                ));
    }).toList());
  }
}

class Bildirim {
  Bildirim(this.cagriId, this.arayanTakip, this.yapilanIslem, this.arayanKisi,
      this.cagriTarihi, this.takipDurumu, this.geriDonusSureci, this.kaynak);

  final String cagriId;
  final String arayanTakip;
  final String yapilanIslem;
  final String arayanKisi;
  final String cagriTarihi;
  final String takipDurumu;
  final String geriDonusSureci;
  final String kaynak;
}
