import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cargo_logistics/widgets/custom/elevated_button_custom_widget.dart';
import 'package:flutter_cargo_logistics/widgets/custom/text_field_custom_widget.dart';

class RegisterView extends StatelessWidget {
  static const String routeName = '/register';
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("Register"),
          backgroundColor: const Color.fromRGBO(14, 118, 189, 1)),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                TextFieldCustomWidget(
                  label: "Username",
                  margin: const EdgeInsets.only(bottom: 20),
                ),
                TextFieldCustomWidget(
                  label: "Password",
                  margin: const EdgeInsets.only(bottom: 20),
                ),
                TextFieldCustomWidget(
                  label: "Name of company",
                  margin: const EdgeInsets.only(bottom: 20),
                ),
                TextFieldCustomWidget(
                  label: "Name & Surname",
                  margin: const EdgeInsets.only(bottom: 20),
                ),
                TextFieldCustomWidget(
                  label: "CIB / VAT",
                  margin: const EdgeInsets.only(bottom: 20),
                ),
                TextFieldCustomWidget(
                  label: "State",
                  margin: const EdgeInsets.only(bottom: 20),
                ),
                TextFieldCustomWidget(
                  label: "Email",
                  margin: const EdgeInsets.only(bottom: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 9,
                      child: TextFieldCustomWidget(
                        label: "City",
                        margin: const EdgeInsets.only(bottom: 20),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(),
                    ),
                    Expanded(
                      flex: 9,
                      child: TextFieldCustomWidget(
                        label: "Postal code",
                        margin: const EdgeInsets.only(bottom: 20),
                      ),
                    ),
                  ],
                ),
                TextFieldCustomWidget(
                  label: "Phone",
                  margin: const EdgeInsets.only(bottom: 20),
                ),
                ElevatedButtonCustomWidget(label: 'SIGN UP')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
