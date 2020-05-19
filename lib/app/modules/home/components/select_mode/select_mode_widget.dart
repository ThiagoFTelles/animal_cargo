import 'package:animalcargo/app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class SelectModeWidget extends StatelessWidget {
  final MainAxisAlignment modalAligment = MainAxisAlignment.spaceBetween;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 390,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Text(
              "Escolha uma modalidade",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.teal.shade900,
                fontSize: 35.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Haras Espírito Santo ",
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 15.0,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.teal.shade800,
                    ),
                    Text(
                      " Haras Bavária",
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  "387 km",
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Column(
                  children: <Widget>[
                    FlatButton(
                      padding: EdgeInsets.all(10),
                      color: Colors.blue.shade200,
                      onPressed: () {
                        print("expresso");
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: modalAligment,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Icon(
                                  Icons.person,
                                  textDirection: TextDirection.ltr,
                                  color: Colors.black38,
                                  size: 40,
                                ),
                              ),
                              Text('Expresso',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                          Text("R\$ 1.548,00",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 15.0,
                              )),
                        ],
                      ),
                    ),
                    FlatButton(
                      padding: EdgeInsets.all(10),
                      color: Colors.white,
                      onPressed: () {
                        print("Compartilhado");
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: modalAligment,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Icon(
                                  Icons.group,
                                  textDirection: TextDirection.ltr,
                                  color: Colors.black38,
                                  size: 40,
                                ),
                              ),
                              Text('Compartilhado',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                          Text("R\$ 1.548,00",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 15.0,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              FlatButton(
                onPressed: () {
                  return print("Modalidade Escolhida");
                },
                child: Container(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
                  color: kGreen,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Confirmar Expresso",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 35,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
