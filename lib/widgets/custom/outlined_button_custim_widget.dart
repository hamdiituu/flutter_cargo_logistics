import 'package:flutter/material.dart';

class OutlinedButtonCustomWidget extends StatelessWidget {
  String label;
  EdgeInsets? margin;
  void Function()? onPressed;
  OutlinedButtonCustomWidget(
      {Key? key, required this.label, this.margin, this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          primary: Colors.orange,
          minimumSize: Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2))),
          side: const BorderSide(color: Colors.white),
        ),
        child: Text(
          label,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
