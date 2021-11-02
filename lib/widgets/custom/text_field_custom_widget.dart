import 'package:flutter/material.dart';

class TextFieldCustomWidget extends StatelessWidget {
  final String label;
  final EdgeInsets? margin;

  const TextFieldCustomWidget({Key? key, required this.label, this.margin})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextField(
        cursorHeight: 12,
        cursorWidth: 2,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            isDense: true,
            label: Text(
              label,
              style: const TextStyle(fontSize: 13),
            )),
      ),
    );
  }
}
