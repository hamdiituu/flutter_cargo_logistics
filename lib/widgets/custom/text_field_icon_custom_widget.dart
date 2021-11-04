import 'package:flutter/material.dart';

class TextFieldIconCustomWidget extends StatelessWidget {
  final String label;
  final EdgeInsets? margin;
  final Color? color;
  final Icon? icon;
  const TextFieldIconCustomWidget(
      {Key? key,
      required this.label,
      this.margin,
      this.color = Colors.black,
      this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextField(
        cursorColor: color,
        cursorHeight: 12,
        cursorWidth: 2,
        decoration: InputDecoration(
            prefixIcon: icon,
            enabledBorder:
                UnderlineInputBorder(borderSide: BorderSide(color: color!)),
            fillColor: color,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            isDense: true,
            label: Text(
              label,
              style: TextStyle(fontSize: 15, color: color),
            )),
      ),
    );
  }
}
