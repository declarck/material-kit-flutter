import 'package:flutter/material.dart';
import 'package:material_kit_flutter/constants/theme.dart';

class Input extends StatelessWidget {
  final String placeholder;
  final Widget suffixIcon;
  final Widget prefixIcon;
  final VoidCallback onTap;
  final VoidCallback onChanged;
  final TextEditingController controller;
  final bool autofocus;
  final Color borderColor;
  final bool filled;
  final Color fillColor;
  final Color textColor;
  final Color enabledBorderColor;
  final Color focusedBorderColor;
  final bool outlineBorder;
  final Color cursorColor;
  final Color hintTextColor;

  Input(
      {required this.placeholder,
      required this.suffixIcon,
      required this.prefixIcon,
      required this.onTap,
      required this.filled,
      required this.fillColor,
      this.textColor = Colors.black,
      this.enabledBorderColor = MaterialColors.muted,
      this.focusedBorderColor = MaterialColors.primary,
      this.cursorColor = MaterialColors.muted,
      this.hintTextColor = MaterialColors.muted,
      required this.onChanged,
      this.outlineBorder = false,
      this.autofocus = false,
      this.borderColor = MaterialColors.border,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: cursorColor,
        onTap: onTap,
        //onChanged: onChanged, //Possibly gonna crash
        controller: controller,
        autofocus: autofocus,
        style: TextStyle(
          height: 0.85,
          fontSize: 14.0,
          color: textColor,
        ),
        textAlignVertical: TextAlignVertical(y: 0.5),
        decoration: InputDecoration(
            contentPadding:
                EdgeInsets.only(left: 16, bottom: outlineBorder ? 20 : 16),
            filled: filled,
            fillColor: fillColor,
            hintStyle: TextStyle(
              color: hintTextColor,
            ),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            enabledBorder: outlineBorder
                ? OutlineInputBorder(
                    borderSide: BorderSide(color: enabledBorderColor))
                : UnderlineInputBorder(
                    borderSide: BorderSide(color: enabledBorderColor)),
            focusedBorder: outlineBorder
                ? OutlineInputBorder(
                    borderSide: BorderSide(color: focusedBorderColor))
                : UnderlineInputBorder(
                    borderSide: BorderSide(color: focusedBorderColor)),
            hintText: placeholder));
  }
}
