import 'package:flutter/material.dart';
import 'package:login_register/forgot_password.dart';
import 'package:login_register/login_page.dart';
import 'package:login_register/register_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterPage(),
    );
  }
}
