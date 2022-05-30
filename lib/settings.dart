import 'package:flutter/material.dart';
import './data.dart';
import './main.dart';
import 'package:provider/provider.dart';
import 'themeNotifier.dart';
import './theme.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 109, 131),
      appBar: AppBar(
          title: Text('Settings'),
          backgroundColor: Color.fromARGB(255, 3, 109, 131)),
      body: LayoutBuilder(builder: (context, constraints) {
        return
            //ignore: dead_code, dead_code
            ListView(
          children: <Widget>[
            ListTile(
              title: Text(
                'Turn Dark Mode',
                style: TextStyle(color: Colors.white),
              ),
              contentPadding: const EdgeInsets.only(left: 16.0),
              trailing: Transform.scale(
                scale: 1,
                child: Switch(
                  value: Provider.of<AppStateNotifier>(context).isDarkMode,
                  hoverColor: Colors.black,
                  activeColor: Colors.white,
                  onChanged: (boolVal) {
                    Provider.of<AppStateNotifier>(context, listen: false)
                        .updateTheme(boolVal);
                  },
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}
