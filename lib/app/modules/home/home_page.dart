import 'package:animalcargo/app/modules/home/components/map/map_controller.dart';
import 'package:animalcargo/app/modules/home/components/map/map_widget.dart';
import 'package:animalcargo/app/modules/home/components/nav_drawer/nav_drawer_widget.dart';
import 'package:animalcargo/app/utils/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

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

  List<SavedPlaceWidget> placesList = [
    SavedPlaceWidget(
      name: "Haras Bavária",
      address: "Av. João da Silva, 12345, Vitória - ES",
    ),
    SavedPlaceWidget(
      name: "Haras Dubai",
      address: "Av. João da Silva, 12345, Vitória - ES",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavDrawer(),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: MapWidget(),
          ),
          Positioned(
            top: 10,
            left: 0,
            child: SafeArea(
              child: FlatButton(
                splashColor: Colors.black26,
                onPressed: () => _scaffoldKey.currentState.openDrawer(),
                child: Icon(
                  Icons.menu,
                  size: 28,
                ),
                shape: new CircleBorder(),
                color: Colors.white,
                padding: EdgeInsets.all(10),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            width: MediaQuery.of(context).size.width,
            height: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  padding: EdgeInsets.all(20.0),
                  onPressed: mapController.onSubmitted,
                  child: CircleAvatar(
                    child: Icon(
                      Icons.my_location,
                      color: kGreen,
                    ),
                    backgroundColor: Colors.white,
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, left: 20, right: 20, bottom: 1),
                        child: TextField(
                          onTap: () {
                            Modular.to.pushNamed("/home/route");
                          },
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Local de embarque',
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              filled: true,
                              fillColor: Colors.black12),
                        ),
                      ),
                      SavedPlaceWidget(
                        name: "Haras Dubai",
                        address: "Av. João da Silva, 12345, Vitória - ES",
                      ),
                      SavedPlaceWidget(
                        name: "Haras Bavária",
                        address: "Av. João da Silva, 12345, Vitória - ES",
                      ),
                      SavedPlaceWidget(
                        name: "Fazenda Paraíso",
                        address: "Av. João da Silva, 12345, Vitória - ES",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
