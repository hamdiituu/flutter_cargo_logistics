import 'package:flutter/material.dart';
import 'package:flutter_cargo_logistics/views/my_profile_view.dart';
import 'package:flutter_cargo_logistics/views/my_transport_view.dart';
import 'package:flutter_cargo_logistics/views/search_transport_view.dart';

class MainView extends StatefulWidget {
  static const String routeName = '/main';
  MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final _selectedItemColor = Colors.white;
  final _unselectedItemColor = Colors.white;
  final _selectedBgColor = Color.fromRGBO(36, 77, 157, 1);
  final _unselectedBgColor = Color.fromRGBO(14, 118, 189, 1);
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    SearchTransportView(),
    MyTransportView(),
    MyProfileView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Color _getBgColor(int index) =>
      _selectedIndex == index ? _selectedBgColor : _unselectedBgColor;

  Color _getItemColor(int index) =>
      _selectedIndex == index ? _selectedItemColor : _unselectedItemColor;

  Widget _buildIcon(IconData iconData, String text, int index) => Container(
        width: double.infinity,
        height: kBottomNavigationBarHeight,
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                  left: BorderSide(width: 0.5, color: _selectedBgColor),
                  top: BorderSide(width: 0.5, color: _selectedBgColor)),
              color: _getBgColor(index)),
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(iconData),
                Text(text,
                    style:
                        TextStyle(fontSize: 12, color: _getItemColor(index))),
              ],
            ),
            onTap: () => _onItemTapped(index),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.search, 'Search', 0),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.business, 'My tranport', 1),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.person, 'My profile', 2),
            title: SizedBox.shrink(),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: _selectedItemColor,
        unselectedItemColor: _unselectedItemColor,
      ),
    );
  }
}
