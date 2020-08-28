import 'package:flutter/material.dart';
import 'package:login_register/components.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: buildEdgeInsetsLogo(),
                child: Image.asset("assets/images/forgot_password"),
              ),
              Container(
                margin: buildEdgeInsetsTextField(),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Your Email",
                      hintStyle: TextStyle(color: Colors.grey[300]),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
