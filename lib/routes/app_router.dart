import 'package:flutter/material.dart';
import 'package:flutter_cargo_logistics/views/login_view.dart';
import 'package:flutter_cargo_logistics/views/main_view.dart';
import 'package:flutter_cargo_logistics/views/my_profile_view.dart';
import 'package:flutter_cargo_logistics/views/my_transport_view.dart';
import 'package:flutter_cargo_logistics/views/register_view.dart';
import 'package:flutter_cargo_logistics/views/search_transport_view.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LoginView.routeName:
        return MaterialPageRoute(builder: (context) => LoginView());
      case RegisterView.routeName:
        return MaterialPageRoute(builder: (context) => RegisterView());
      case MainView.routeName:
        return MaterialPageRoute(builder: (context) => MainView());
    }
  }
}
