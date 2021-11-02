import 'package:flutter/material.dart';

class ElevatedButtonCustomWidget extends StatelessWidget {
  String label;
  ElevatedButtonCustomWidget({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.orange,
          minimumSize: Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2))),
        ),
        child: Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        onPressed: () {},
      ),
    );
  }
}
