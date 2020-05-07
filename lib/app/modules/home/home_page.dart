import 'package:animalcargo/app/modules/home/components/map/map_controller.dart';
import 'package:animalcargo/app/modules/home/components/map/map_widget.dart';
import 'package:animalcargo/app/modules/home/components/nav_drawer/nav_drawer_widget.dart';
import 'package:animalcargo/app/utils/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';

FirebaseUser loggedInUser;

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  final _auth = FirebaseAuth.instance;
  final mapController = Modular.get<MapController>();

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
      drawer: NavDrawer(),
//      appBar: AppBar(
//        leading: null,
//        actions: <Widget>[
//          IconButton(
//              icon: Icon(Icons.close),
//              onPressed: () {
//                _auth.signOut();
//                //TODO: puxar do controller
//                Modular.to.pushReplacementNamed('/login');
//              }),
//        ],
//        title: Text(loggedInUser.email),
//        backgroundColor: Colors.lightBlueAccent,
//      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: MapWidget(),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: SafeArea(
              child: FlatButton(
                onPressed: () {},
                child: Icon(
                  Icons.menu,
                  size: 45,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            width: MediaQuery.of(context).size.width,
            height: 450,
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
                        padding: EdgeInsets.all(20.0),
                        child: Text("Olá ${loggedInUser.email}!",
                            style: TextStyle(
                              color: Colors.teal.shade900,
                              fontSize: 20.0,
                            )),
                      ),
                      SizedBox(
                        height: 2,
                        child: Container(
                          color: Colors.black38,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Para onde?',
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              filled: true,
                              fillColor: Colors.black12),
                        ),
                      ),
                      Padding(
                        //TODO: Colocar isto dentro de um widget
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Colors.black54,
                              size: 40,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Haras Bavária',
                                    style: TextStyle(
                                      color: Colors.teal.shade900,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text('Av. João da Silva, 12345, Vitória - ES',
                                    //TODO: O que fazer quando o texto estourar o widget?
                                    textScaleFactor: 0.9,
                                    style: TextStyle(
                                      color: Colors.teal.shade900,
                                      fontSize: 18.0,
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Colors.black54,
                              size: 40,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Haras Dubai',
                                    style: TextStyle(
                                      color: Colors.teal.shade900,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text('Av. Leitão da Silva, 777, Salvador - BA',
                                    //TODO: O que fazer quando o texto estourar o widget?
                                    textScaleFactor: 0.9,
                                    style: TextStyle(
                                      color: Colors.teal.shade900,
                                      fontSize: 18.0,
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
//          Flexible(
//            child: Hero(
//              tag: 'logo',
//              child: Container(
//                height: 100.0,
//                width: 100.0,
//                child: Image.asset('assets/images/logo.png'),
//              ),
//            ),
//          ),
        ],
      ),
    );
  }
}
