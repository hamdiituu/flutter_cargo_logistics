import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_cargo_logistics/views/main_view.dart';
import 'package:flutter_cargo_logistics/views/register_view.dart';
import 'package:flutter_cargo_logistics/views/search_transport_view.dart';
import 'package:flutter_cargo_logistics/widgets/custom/elevated_button_custom_widget.dart';
import 'package:flutter_cargo_logistics/widgets/custom/outlined_button_custim_widget.dart';
import 'package:flutter_cargo_logistics/widgets/custom/text_field_icon_custom_widget.dart';

class LoginView extends StatefulWidget {
  static const String routeName = '/';
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage('assets/images/bg.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "CARGO",
                style: TextStyle(
                  fontSize: 70,
                  fontFamily: 'Bouncy',
                  color: Colors.white,
                ),
              ),
              const Text(
                "LOGISTICS",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Bouncy',
                  color: Colors.white,
                ),
              ),
              const TextFieldIconCustomWidget(
                icon: Icon(Icons.person, color: Colors.white, size: 24),
                color: Colors.white,
                label: 'Username',
                margin: EdgeInsets.only(bottom: 20, top: 20),
              ),
              const TextFieldIconCustomWidget(
                icon: Icon(Icons.lock, color: Colors.white, size: 24),
                color: Colors.white,
                label: 'Password',
                margin: EdgeInsets.only(bottom: 40),
              ),
              ElevatedButtonCustomWidget(
                label: 'SIGN IN',
                onPressed: () {
                  Navigator.of(context).pushNamed(MainView.routeName);
                },
              ),
              OutlinedButtonCustomWidget(
                label: 'REGISTER',
                margin: const EdgeInsets.only(top: 10),
                onPressed: () {
                  Navigator.of(context).pushNamed(RegisterView.routeName);
                },
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 40),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgat password?",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 16),
                    )),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
