import 'package:animalcargo/app/modules/home/components/saved_place/saved_place_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'select_route_controller.dart';

class SelectRoutePage extends StatefulWidget {
  final String title;
  const SelectRoutePage({Key key, this.title = "Percurso"}) : super(key: key);

  @override
  _SelectRoutePageState createState() => _SelectRoutePageState();
}

class _SelectRoutePageState
    extends ModularState<SelectRoutePage, SelectRouteController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    List<SavedPlaceWidget> places = List.generate(
      100,
      (i) {
        return SavedPlaceWidget(
          name: "Haras Bavária",
          address: "Av. João da Silva, 12345, Vitória - ES",
        );
      },
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.add_location),
                Text(
                  "Adicionar novo local",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: places.length,
                itemBuilder: (_, i) {
                  return Column(
                    children: <Widget>[
                      places[i],
                      Divider(
                        height: 10,
                        color: Colors.black26,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
