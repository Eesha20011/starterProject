import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import './UserModel.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var LoginUserModel = LoginUser(
      emailadress: TextEditingController(), passeword: TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Icon(
                    Icons.house_outlined,
                    color: Theme.of(context).backgroundColor,
                    size: constraints.maxHeight * 0.3,
                  ),
                  Text(
                    'Welcome',
                    style: TextStyle(
                        fontSize: constraints.maxHeight * 0.04,
                        color: Theme.of(context).backgroundColor),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.01,
                  ),
                  Container(
                    width: constraints.maxWidth * 0.9,
                    child: TextField(
                      controller: LoginUserModel.emailadress,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Theme.of(context).accentColor,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Theme.of(context).backgroundColor),
                              borderRadius: BorderRadius.circular(15)),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Theme.of(context).backgroundColor),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: 'Email'),
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.01,
                  ),
                  Container(
                    width: constraints.maxWidth * 0.9,
                    child: TextField(
                      controller: LoginUserModel.passeword,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Theme.of(context).accentColor,
                          border: OutlineInputBorder(),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Theme.of(context).backgroundColor),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: 'Passeword'),
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.02,
                  ),
                  Container(
                      height: constraints.maxHeight * 0.07,
                      width: constraints.maxWidth * 0.5,
                      decoration: BoxDecoration(
                          color: Theme.of(context).secondaryHeaderColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: FlatButton(
                          onPressed: () {
                            
                           FirebaseAuth.instance.signInWithEmailAndPassword(
                               email: LoginUserModel.emailadress.text,
                               password: LoginUserModel.passeword.text)
                               ;
                               if ( FirebaseAuth.instance.currentUser?.uid != null){
                                   Navigator.pushNamed(context, '/home');
                                   }
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Theme.of(context).backgroundColor,
                                fontSize: constraints.maxHeight * 0.03,
                                fontWeight: FontWeight.bold),
                          ))
                          
                          
                          ),
                  SizedBox(
                    height: constraints.maxHeight * 0.15,
                  ),
                  FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Text(
                        'New User? Create Account',
                      ))
                ]);
          })),
    );
  }
}
