import 'package:flutter/material.dart';
import 'package:flutter_cargo_logistics/models/my_transport_model.dart';

class ListItemMyTrasport extends StatelessWidget {
  MyTransportModel model;
  ListItemMyTrasport({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration:
          const BoxDecoration(border: Border(bottom: BorderSide(width: 0.15))),
      child: Padding(
        padding: EdgeInsets.only(left: 30, right: 10, top: 15, bottom: 15),
        child: Row(
          children: [
            Expanded(
              flex: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              model.fromCity,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(left: 5, right: 4, bottom: 8),
                              child: const Text(
                                '. . .',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.grey),
                              ),
                            ),
                            Text(
                              model.toCity,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                          ],
                        ),
                        Text(model.date, style: TextStyle(color: Colors.grey))
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              model.weight,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 13),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Text(
                                model.scale,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w300, fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          model.price,
                          style: TextStyle(
                              color: Color.fromRGBO(14, 118, 189, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )
                      ])
                ],
              ),
            ),
            Expanded(
              child: Container(
                  child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey.shade400,
                size: 18,
              )),
            )
          ],
        ),
      ),
    );
  }
}
