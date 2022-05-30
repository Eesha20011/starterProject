import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import './UserModel.dart';
import './Login.dart';
import './settings.dart';
import './home.dart';
import './profile.dart';
import './signup.dart';
import 'themeNotifier.dart';
import './theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(
    ChangeNotifierProvider<AppStateNotifier>(
      create: (_) => new AppStateNotifier(),
      child: HomeApp(),
    ),
  );
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateNotifier>(builder: (context, appState, child) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: Apptheme.lightTheme, // ThemeData(primarySwatch: Colors.blue),
          darkTheme:
              Apptheme.darkTheme, // ThemeData(primarySwatch: Colors.blue),
          themeMode: appState.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          initialRoute: '/Login',
          routes: {
            '/Login': (context) => LoginScreen(),
            '/home': (context) => HomeScreen(),
            '/settings': (context) => SettingScreen(),
            '/profile': (context) => ProfileScreen(),
            '/signup': (context) => SignupScreen(),
          },
          home: LoginScreen());
    });
  }
}
