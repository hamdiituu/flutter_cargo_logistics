import 'package:flutter/material.dart';
import 'package:flutter_cargo_logistics/routes/app_router.dart';
import 'package:flutter_cargo_logistics/views/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cargo Logistics',
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
