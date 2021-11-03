import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cargo_logistics/db/my_transports.dart';
import 'package:flutter_cargo_logistics/widgets/custom/elevated_button_custom_widget.dart';
import 'package:flutter_cargo_logistics/widgets/custom/text_field_custom_widget.dart';
import 'package:flutter_cargo_logistics/widgets/my_transport/list_item_my_transport.dart';

class MyTransportView extends StatelessWidget {
  static const String routeName = "/myTransport";

  const MyTransportView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Container(),
          title: const Text("My transport"),
          backgroundColor: const Color.fromRGBO(14, 118, 189, 1)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: myTransports
                  .map((model) => ListItemMyTrasport(model: model))
                  .toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Add new transport',
                    style: TextStyle(
                        color: Color.fromRGBO(14, 118, 189, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15, bottom: 8),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'From',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                TextFieldCustomWidget(
                                  label: 'State',
                                  margin: EdgeInsets.only(bottom: 15, top: 15),
                                ),
                                TextFieldCustomWidget(
                                  label: 'City',
                                  margin: EdgeInsets.only(bottom: 15),
                                ),
                                TextFieldCustomWidget(
                                  label: 'Date',
                                  margin: EdgeInsets.only(bottom: 15),
                                )
                              ],
                            )),
                        Expanded(child: Container()),
                        Expanded(
                            flex: 8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'To',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                TextFieldCustomWidget(
                                  label: 'State',
                                  margin: EdgeInsets.only(bottom: 15, top: 15),
                                ),
                                TextFieldCustomWidget(
                                  label: 'City',
                                  margin: EdgeInsets.only(bottom: 15),
                                ),
                                TextFieldCustomWidget(
                                  label: 'Date',
                                  margin: EdgeInsets.only(bottom: 15),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.add_circle,
                          color: Color.fromRGBO(14, 118, 189, 1),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: const Text(
                            'Add station',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: TextFieldCustomWidget(label: 'Weight')),
                        Expanded(child: Container()),
                        Expanded(
                            flex: 4,
                            child: TextFieldCustomWidget(label: 'Volume')),
                        Expanded(child: Container()),
                        Expanded(
                            flex: 8,
                            child:
                                TextFieldCustomWidget(label: 'Vehicle type')),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: TextFieldCustomWidget(label: 'Price')),
                        Expanded(child: Container()),
                        Expanded(
                            flex: 13,
                            child: TextFieldCustomWidget(label: 'Text box')),
                      ],
                    ),
                  ),
                  ElevatedButtonCustomWidget(label: 'PUBLISH')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
