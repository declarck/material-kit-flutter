import 'package:flutter/material.dart';
import 'package:material_kit_flutter/datas/user.dart';
import 'package:material_kit_flutter/datas/users.dart';

import '../constants/Theme.dart';
import '../widgets/datatable.dart';

// class MainPage extends StatefulWidget {
//   @override
//   _MainPageState createState() => _MainPageState();
// }
//
// class _MainPageState extends State<MainPage> {
//   @override
//   Widget build(BuildContext context) => TabBarWidget(
//         title: 'Tablo',
//         tabs: [
//           Tab(icon: Icon(Icons.sort_by_alpha), text: 'Sortable'),
//           // Tab(icon: Icon(Icons.select_all), text: 'Selectable'),
//           // Tab(icon: Icon(Icons.edit), text: 'Editable'),
//         ],
//         children: [
//           SortablePage(),
//           // Container(),
//           // Container(),
//         ],
//       );
// }

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<User> users;
  int sortColumnIndex;
  bool isAscending = false;

  @override
  void initState() {
    super.initState();

    this.users = List.of(allUsers);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: MaterialColors.blueSoftDarker,
        appBar: AppBar(
          backgroundColor: MaterialColors.blueSoft,
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
            GestureDetector(
              onTap: () {},
              child: Icon(Icons.search),
            ),
            GestureDetector(
              onTap: () {},
              child: PopupMenuButton(
                icon: Icon(Icons.import_export),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 0,
                    child: Text('PDF'),
                  ),
                  PopupMenuItem(
                    value: 0,
                    child: Text('Excel'),
                  ),
                  PopupMenuItem(
                    value: 0,
                    child: Text('Word'),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: ScrollableWidget(
          child: buildDataTable(),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     // Add your onPressed code here!
        //   },
        //   backgroundColor: Colors.green,
        //   child: const Icon(Icons.add),
        // ),
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
      rows: getRows(users),
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

  List<DataRow> getRows(List<User> users) => users.map((User user) {
        final cells = [
          user.cagriId,
          user.arayanTalep,
          user.yapilanIslem,
          user.arayanKisi,
          user.cagriTarihi,
          user.takipDurumu,
          user.geriDonusSureci,
          user.kaynak,
          user.detay,
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
      users.sort((user1, user2) =>
          compareString(ascending, user1.cagriId, user2.cagriId));
    } else if (columnIndex == 1) {
      users.sort((user1, user2) =>
          compareString(ascending, user1.arayanTalep, user2.arayanTalep));
    } else if (columnIndex == 2) {
      users.sort((user1, user2) =>
          compareString(ascending, user1.yapilanIslem, user2.yapilanIslem));
    } else if (columnIndex == 3) {
      users.sort((user1, user2) =>
          compareString(ascending, user1.arayanKisi, user2.arayanKisi));
    } else if (columnIndex == 4) {
      users.sort((user1, user2) =>
          compareString(ascending, user1.cagriTarihi, user2.cagriTarihi));
    } else if (columnIndex == 5) {
      users.sort((user1, user2) =>
          compareString(ascending, user1.takipDurumu, user2.takipDurumu));
    } else if (columnIndex == 6) {
      users.sort((user1, user2) => compareString(
          ascending, user1.geriDonusSureci, user2.geriDonusSureci));
    } else if (columnIndex == 7) {
      users.sort((user1, user2) =>
          compareString(ascending, user1.kaynak, user2.kaynak));
    } else if (columnIndex == 8) {
      users.sort(
          (user1, user2) => compareString(ascending, user1.detay, user2.detay));
    }

    setState(() {
      this.sortColumnIndex = columnIndex;
      this.isAscending = ascending;
    });
  }

  int compareString(bool ascending, String value1, String value2) =>
      ascending ? value1.compareTo(value2) : value2.compareTo(value1);
}
