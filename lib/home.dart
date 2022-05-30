import 'dart:ui';
import './theme.dart';
import './themeNotifier.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var AppBarHeight = AppBar().preferredSize.height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          title: Text('Home'),
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).secondaryHeaderColor,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Theme.of(context).backgroundColor,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
            )
          ],
        ),
        body: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.height,
                height: MediaQuery.of(context).size.height - AppBarHeight,
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                )),
            LayoutBuilder(builder: (context, constraints) {
              return Column(children: <Widget>[
                SizedBox(
                  height: constraints.maxHeight * 0.2,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      width: constraints.maxHeight * 0.27,
                      height: constraints.maxHeight * 0.27,
                      decoration: BoxDecoration(
                          color: Theme.of(context).secondaryHeaderColor,
                          borderRadius: BorderRadius.circular(
                              constraints.maxWidth * 0.4)),
                    ),
                    CircleAvatar(
                        radius: constraints.maxHeight * 0.12,
                        backgroundImage:
                            AssetImage('assets/images/girlpicture.jpeg'))
                  ],
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.01,
                ),
                Text(
                  'Amanda Gonzalez',
                  style: TextStyle(
                      fontSize: constraints.maxHeight * 0.03,
                      color: Theme.of(context).secondaryHeaderColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.01,
                ),
                Container(
                  width: constraints.maxWidth * 0.9,
                  height: constraints.maxHeight * 0.15,
                  decoration: BoxDecoration(
                      color: Theme.of(context).secondaryHeaderColor,
                      borderRadius:
                          BorderRadius.circular(constraints.maxWidth * 0.05)),
                  child: Row(children: <Widget>[
                    SizedBox(
                      width: constraints.maxWidth * 0.07,
                    ),
                    FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/profile');
                        },
                        child: Column(children: <Widget>[
                          SizedBox(
                            height: constraints.maxHeight * 0.01,
                          ),
                          Icon(
                            Icons.face,
                            size: constraints.maxHeight * 0.1,
                            color: Theme.of(context).backgroundColor,
                          ),
                          Text(
                            'Profile',
                            style: TextStyle(color: Theme.of(context).backgroundColor),
                          ),
                        ])),
                    SizedBox(
                      width: constraints.maxWidth * 0.01,
                    ),
                    Column(children: <Widget>[
                      SizedBox(
                        height: constraints.maxHeight * 0.01,
                      ),
                      Icon(
                        Icons.favorite_rounded,
                        size: constraints.maxHeight * 0.1,
                        color: Theme.of(context).backgroundColor,
                      ),
                      Text(
                        'Likes',
                        style: TextStyle(color: Theme.of(context).backgroundColor),
                      ),
                    ]),
                    SizedBox(
                      width: constraints.maxWidth * 0.01,
                    ),
                    FlatButton(
                        onPressed: () {
                         Navigator.pushNamed(context, '/Login');
                         FirebaseAuth.instance.signOut();
                        },
                        child: Column(children: <Widget>[
                          SizedBox(
                            height: constraints.maxHeight * 0.01,
                          ),
                          Icon(
                            Icons.analytics_outlined,
                            size: constraints.maxHeight * 0.1,
                            color: Theme.of(context).backgroundColor,
                          ),
                          Text(
                            'Logout',
                            style: TextStyle(color:Theme.of(context).backgroundColor),
                          ),
                        ])),
                    SizedBox(
                      width: constraints.maxWidth * 0.01,
                    ),
                  ]),
                ),
              ]);
            })
          ],
        ));
  }
}
