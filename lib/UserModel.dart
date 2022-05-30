import 'package:flutter/material.dart';

class LoginUser {
  TextEditingController emailadress;
  TextEditingController passeword;

  LoginUser({required this.emailadress, required this.passeword});
}

class SignUpUser extends LoginUser {
  TextEditingController username;
  SignUpUser({required emailadress, required passeword, required this.username})
      : super(emailadress: emailadress, passeword: passeword);
}
