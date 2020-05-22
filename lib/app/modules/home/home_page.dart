import 'package:animalcargo/app/modules/home/components/map/map_controller.dart';
import 'package:animalcargo/app/modules/home/components/map/map_widget.dart';
import 'package:animalcargo/app/modules/home/components/nav_drawer/nav_drawer_widget.dart';
import 'package:animalcargo/app/modules/home/components/register_place/register_place_widget.dart';
import 'package:animalcargo/app/utils/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'components/saved_place/saved_place_widget.dart';
import 'home_controller.dart';

FirebaseUser loggedInUser;

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final _auth = FirebaseAuth.instance;
  final mapController = Modular.get<MapController>();

  String _step = "destino";
  bool _registerPlace = false;
  LatLng _destino;
  LatLng _origem;

  void _toggleStep() {
    setState(() {
      if (_step == "destino") {
        _step = "origem";
      } else {
        _step = "destino";
      }
    });
  }

  void _toggleRegisterPlace() {
    setState(() {
      _registerPlace = !_registerPlace;
    });
  }

  void _setPlace(LatLng latLng) {
    _toggleStep();
    if (_step == "destino") {
      _destino = LatLng(-13.3837802, -46.481538);
    } else {
      _origem = latLng;
    }
  }

  List<SavedPlaceWidget> placesList = [
    SavedPlaceWidget(
      name: "Haras Bavária",
      address: "Av. João da Silva, 12345, Vitória - ES",
      latLng: LatLng(-20.310918732673137, -40.350530818104744),
    ),
    SavedPlaceWidget(
      name: "Haras Dubai",
      address: "Av. João da Silva, 12345, Vitória - ES",
      latLng: LatLng(-20.310918732673137, -40.350530818104744),
    ),
  ];

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    //TODO: Jogar isto para o controller
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        setState(() {
          loggedInUser = user;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  List<SavedPlaceWidget> places = List.generate(
    15,
    (i) {
      return SavedPlaceWidget(
        name: "Haras Bavária",
        address: "Av. João da Silva, 12345, Vitória - ES",
        latLng: LatLng(-20.310918732673137, -40.350530818104744),
      );
    },
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavDrawer(),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          MapWidget(),
          Positioned(
            top: 20,
            left: 0,
            child: SafeArea(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    FlatButton(
                      splashColor: Colors.black26,
                      onPressed: () => _scaffoldKey.currentState.openDrawer(),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.menu,
                          size: 28,
                          color: Colors.black,
                        ),
                      ),
                      shape: new CircleBorder(),
                      color: Colors.white,
                      padding: EdgeInsets.all(0),
                    ),
                    Divider(
                      height: 20,
                    ),
                    FlatButton(
                      splashColor: Colors.black26,
                      onPressed: mapController.onSubmitted,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.my_location,
                          size: 28,
                          color: Colors.blueAccent,
                        ),
                      ),
                      shape: new CircleBorder(),
                      color: Colors.white,
                      padding: EdgeInsets.all(0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.45,
            minChildSize: 0.4,
            maxChildSize: 0.8,
            builder: (context, controller) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: _registerPlace
                    ? Column(
                        children: <Widget>[
                          Icon(
                            Icons.drag_handle,
                            size: 25,
                            color: Colors.black12,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "Novo Local",
                              style: TextStyle(
                                color: Colors.grey.shade800,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          FlatButton(
                            onPressed: _toggleRegisterPlace,
                            child: Icon(Icons.arrow_back),
                          ),
                          Expanded(
                            child: ListView.builder(
                              padding: EdgeInsets.all(0),
                              controller: controller,
                              itemCount: 1,
                              itemBuilder: (_, i) {
                                return Column(
                                  children: <Widget>[
                                    TextField(),
                                    TextField(),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: <Widget>[
                          Icon(
                            Icons.drag_handle,
                            size: 25,
                            color: Colors.black12,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              _step == "destino" ? "DESTINO" : "ORIGEM",
                              style: TextStyle(
                                color: kRed,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          FlatButton(
                            onPressed: _toggleRegisterPlace,
                            child: RegisterPlaceWidget(),
                          ),
                          Expanded(
                            child: ListView.builder(
                              padding: EdgeInsets.all(0),
                              controller: controller,
                              itemCount: places.length,
                              itemBuilder: (_, i) {
                                return Column(
                                  children: <Widget>[
                                    FlatButton(
                                      onPressed: () {
                                        _setPlace(places[i].latLng);
                                      },
                                      child: places[i],
                                    ),
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
              );
            },
          ),
        ],
      ),
    );
  }
}

//Positioned(
//bottom: 0,
//left: 0,
//width: MediaQuery.of(context).size.width,
//height: 400,
//child: Column(
//crossAxisAlignment: CrossAxisAlignment.end,
//mainAxisAlignment: MainAxisAlignment.end,
//children: <Widget>[
//FlatButton(
//padding: EdgeInsets.all(20.0),
//onPressed: mapController.onSubmitted,
//child: CircleAvatar(
//child: Icon(
//Icons.my_location,
//color: kGreen,
//),
//backgroundColor: Colors.white,
//),
//),
//
//],
//),
//),
