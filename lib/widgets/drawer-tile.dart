import 'package:flutter/material.dart';
import 'package:material_kit_flutter/constants/Theme.dart';

class DrawerTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  final bool isSelected;
  final Color iconColor;

  DrawerTile(
      {
        required this.title,
        required this.icon,
        required this.onTap,
      this.isSelected = false,
      this.iconColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            height: 45,
            //padding: EdgeInsets.only(left: 12),
            margin: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: isSelected
                  ? MaterialColors.blueSoft
                  : MaterialColors.blueSoftDarker,
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(
                    icon,
                    size: 22,
                    color: isSelected ? Colors.white : Colors.white70,
                    //color: Colors.white,
                  ),
                ),
                Text(title,
                    style: TextStyle(
                      fontSize: 15,
                      color: isSelected ? Colors.white : Colors.white70,
                      //color: Colors.white,
                    ))
              ],
            )));
  }
}
