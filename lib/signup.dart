import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'UserModel.dart';
import './theme.dart';
import './themeNotifier.dart';
import 'package:provider/provider.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var SignUpUserModel = SignUpUser(
      username: TextEditingController(),
      emailadress: TextEditingController(),
      passeword: TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Create an account'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 7, 197, 215), Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: LayoutBuilder(builder: (context, constraints) {
            return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: constraints.maxHeight * 0.2,
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.01,
                  ),
                  Container(
                    width: constraints.maxWidth * 0.9,
                    child: TextField(
                      controller: SignUpUserModel.username,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 188, 237, 239),
                          border: OutlineInputBorder(),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: 'Enter Username'),
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.01,
                  ),
                  Container(
                    width: constraints.maxWidth * 0.9,
                    child: TextField(
                      controller: SignUpUserModel.emailadress,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 188, 237, 239),
                          border: OutlineInputBorder(),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: 'Enter Email Address'),
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.01,
                  ),
                  Container(
                    width: constraints.maxWidth * 0.9,
                    child: TextField(
                      controller: SignUpUserModel.passeword,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 188, 237, 239),
                          border: OutlineInputBorder(),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: 'Enter Password'),
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.02,
                  ),
                  Container(
                      height: constraints.maxHeight * 0.07,
                      width: constraints.maxWidth * 0.5,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 3, 109, 131),
                          borderRadius: BorderRadius.circular(20)),
                      child: FlatButton(
                          onPressed: () {
                            FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                                    email: SignUpUserModel.emailadress.text,
                                    password: SignUpUserModel.passeword.text);
                            Navigator.pushNamed(context, '/home');
                          },
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: constraints.maxHeight * 0.03,
                                fontWeight: FontWeight.bold),
                          ))),
                  SizedBox(
                    height: constraints.maxHeight * 0.15,
                  ),
                ]);
          })),
    );
  }
}
