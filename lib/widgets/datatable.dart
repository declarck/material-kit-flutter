import 'package:flutter/material.dart';

//HEAD
// class TabBarWidget extends StatelessWidget {
//   final String title;
//   final List<Tab> tabs;
//   final List<Widget> children;
//
//   const TabBarWidget({
//     Key key,
//     this.title,
//     this.tabs,
//     this.children,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) => DefaultTabController(
//         length: tabs.length,
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text(title),
//             centerTitle: true,
//             flexibleSpace: Container(
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [Colors.purple, Colors.blue],
//                   begin: Alignment.bottomRight,
//                   end: Alignment.topLeft,
//                 ),
//               ),
//             ),
//             bottom: TabBar(
//               isScrollable: true,
//               indicatorColor: Colors.white,
//               indicatorWeight: 5,
//               tabs: tabs,
//             ),
//             elevation: 20,
//             titleSpacing: 20,
//           ),
//           body: TabBarView(children: children),
//         ),
//       );
// }

//BODY
class ScrollableWidget extends StatelessWidget {
  final Widget child;

  const ScrollableWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: child,
        ),
      );
}
