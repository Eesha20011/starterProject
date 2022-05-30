import 'package:flutter/material.dart';
import './theme.dart';
import './data.dart';
import './icondata.dart';
import './theme.dart';
import './themeNotifier.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    IconPictures picture;

    return Scaffold(
        appBar: AppBar(
            title: Text('Profile'),
            backgroundColor: Color.fromARGB(255, 7, 197, 215)),
        body: LayoutBuilder(builder: ((context, constraints) {
          return Stack(children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.3,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 7, 197, 215)),
                ),
                Column(children: <Widget>[
                  SizedBox(
                    height: constraints.maxHeight * 0.04,
                  ),
                  CircleAvatar(
                      radius: constraints.maxHeight * 0.08,
                      backgroundImage:
                          AssetImage('assets/images/girlpicture.jpeg')),
                  SizedBox(
                    height: constraints.maxHeight * 0.01,
                  ),
                  Text(
                    'Amanda Gonzalez',
                    style: TextStyle(
                        fontSize: constraints.maxHeight * 0.03,
                        color: Color.fromARGB(255, 3, 109, 131),
                        fontWeight: FontWeight.bold),
                  )
                ])
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: constraints.maxHeight * 0.3,
                ),
                Stack(alignment: Alignment.center, children: <Widget>[
                  Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight * 0.7,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                      width: constraints.maxWidth * 0.9,
                      height: constraints.maxHeight * 0.5,
                      child: GridView.builder(
                        scrollDirection: Axis.vertical,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: constraints.maxWidth * 0.05,
                            crossAxisSpacing: constraints.maxWidth * 0.05,
                            crossAxisCount: 2),
                        itemBuilder: (ctx, index) => Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  constraints.maxHeight * 0.03),
                              color: Color.fromARGB(255, 3, 109, 131)),
                          child: Column(children: <Widget>[
                            SizedBox(
                              height: constraints.maxHeight * 0.05,
                            ),
                            Row(children: <Widget>[
                              SizedBox(
                                width: constraints.maxWidth * 0.11,
                              ),
                              IconButton(
                                icon: Icon(
                                  pictures[index].icon,
                                  color: Colors.white,
                                  size: constraints.maxHeight * 0.09,
                                ),
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: constraints.maxWidth * 0.11,
                              )
                            ]),
                            SizedBox(
                              height: constraints.maxHeight * 0.04,
                            ),
                            Text(
                              elements[index].elements,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: constraints.maxHeight * 0.02),
                            )
                          ]),
                        ),
                        itemCount: elements.length,
                      )),
                ])
              ],
            )
          ]);
        })));
  }
}
