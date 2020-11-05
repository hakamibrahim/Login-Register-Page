import 'package:flutter/material.dart';
import 'package:login_register/components.dart';
import 'package:login_register/login_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: buildEdgeInsetsTextField(),
          child: ListView(
            children: <Widget>[
              Container(
                margin: buildEdgeInsetsLogo(),
                child: Image.asset("assets/images/register.png"),
              ),
              Container(
                margin: buildEdgeInsetsTextField(),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Your Full Name",
                      hintStyle: TextStyle(color: Colors.grey[300]),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0))),
                ),
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
              ),
              Container(
                margin: buildEdgeInsetsTextField(),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Your Password",
                      hintStyle: TextStyle(color: Colors.grey[300]),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0))),
                ),
              ),
              Container(
                child: MaterialButton(
                  height: 55.0,
                  minWidth: 280.0,
                  onPressed: () {},
                  color: Colors.green[400],
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  splashColor: Colors.greenAccent,
                ),
              ),
              Container(
                margin: buildEdgeInsetsText(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "or have account",
                      style: TextStyle(color: Colors.grey[600], fontSize: 14),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return LoginPage();
                        }));
                      },
                      child: Text(
                        "Login",
                        style:
                            TextStyle(color: Colors.green[400], fontSize: 14),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
