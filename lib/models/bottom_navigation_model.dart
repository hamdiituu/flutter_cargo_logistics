import 'package:flutter/material.dart';

class BottomNavigationModel {
  String routeName;
  Widget widget;
  bool isSelected;

  void active() {
    isSelected = true;
  }

  void passive() {
    isSelected = false;
  }

  BottomNavigationModel(
      {required this.routeName, required this.widget, this.isSelected = false});
}
