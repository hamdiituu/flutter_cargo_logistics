import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_cargo_logistics/views/register_view.dart';
import 'package:flutter_cargo_logistics/views/search_transport_view.dart';

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
        ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue.shade100,
                Colors.blue.shade900,
              ],
            ).createShader(Rect.zero);
          },
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/images/bg_truck.jpeg'),
                fit: BoxFit.cover,
              ),
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
              Container(
                margin: EdgeInsets.only(top: 40),
                height: 50,
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.white))),
                child: const TextField(
                  cursorColor: Colors.white,
                  cursorHeight: 13,
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text("Username"),
                      labelStyle: TextStyle(fontSize: 13, color: Colors.white),
                      icon: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 20,
                      ),
                      border: InputBorder.none),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                height: 50,
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.white))),
                child: const TextField(
                  cursorColor: Colors.white,
                  cursorHeight: 13,
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text("Passoword"),
                      labelStyle: TextStyle(fontSize: 13, color: Colors.white),
                      icon: Icon(
                        Icons.lock,
                        color: Colors.white,
                        size: 20,
                      ),
                      border: InputBorder.none),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(SearchTransportView.routeName);
                  },
                  child: const Text(
                    "SIGN IN",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: const Size(double.infinity, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(2)))),
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RegisterView.routeName);
                },
                child: const Text(
                  "REGISTER",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.white),
                    minimumSize: const Size(double.infinity, 40),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 40),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgat password?",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 12),
                    )),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
