import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cargo_logistics/widgets/custom/elevated_button_custom_widget.dart';
import 'package:flutter_cargo_logistics/widgets/custom/text_field_custom_widget.dart';

class SearchTransportView extends StatelessWidget {
  static const String routeName = "/searchTransport";

  const SearchTransportView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Container(),
          title: const Text("Search transport"),
          backgroundColor: const Color.fromRGBO(14, 118, 189, 1)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'From',
                style: TextStyle(
                    color: Color.fromRGBO(14, 118, 189, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              const TextFieldCustomWidget(
                label: 'State',
                margin: EdgeInsets.only(bottom: 15.0, top: 15.0),
              ),
              const TextFieldCustomWidget(
                label: 'City',
                margin: EdgeInsets.only(bottom: 15.0),
              ),
              const TextFieldCustomWidget(
                label: 'Date',
                margin: EdgeInsets.only(bottom: 30.0),
              ),
              const Text(
                'To',
                style: TextStyle(
                    color: Color.fromRGBO(14, 118, 189, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              const TextFieldCustomWidget(
                label: 'State',
                margin: EdgeInsets.only(bottom: 15.0, top: 15.0),
              ),
              const TextFieldCustomWidget(
                label: 'City',
                margin: EdgeInsets.only(bottom: 15.0),
              ),
              const TextFieldCustomWidget(
                label: 'Date',
                margin: EdgeInsets.only(bottom: 15.0),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 30.0),
                child: Row(
                  children: [
                    const Expanded(
                        flex: 5,
                        child: TextFieldCustomWidget(
                          label: 'Weight',
                        )),
                    Expanded(child: Container()),
                    const Expanded(
                        flex: 5,
                        child: TextFieldCustomWidget(
                          label: 'Volume',
                        )),
                    Expanded(child: Container()),
                    const Expanded(
                        flex: 5,
                        child: TextFieldCustomWidget(
                          label: 'Vehicle type',
                        )),
                  ],
                ),
              ),
              ElevatedButtonCustomWidget(label: 'SEARCH')
            ],
          ),
        ),
      ),
    );
  }
}
