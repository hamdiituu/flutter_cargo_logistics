import 'package:flutter/material.dart';

class ElevatedButtonCustomWidget extends StatelessWidget {
  String label;
  EdgeInsets? margin;
  void Function()? onPressed;
  ElevatedButtonCustomWidget(
      {Key? key, required this.label, this.margin, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.orange,
          minimumSize: Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2))),
        ),
        child: Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
