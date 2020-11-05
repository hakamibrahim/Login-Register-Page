import 'package:flutter/material.dart';
import 'package:login_register/forgot_password.dart';
import 'package:login_register/register_page.dart';
import 'components.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: buildEdgeInsetsTextField(),
        child: ListView(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 15),
          children: <Widget>[
            Container(
              child: Image.asset("assets/images/login.png"),
            ),
            Container(
              margin: buildEdgeInsetsTextField(),
              child: TextField(
                controller: userNameController,
                decoration: InputDecoration(
                    hintText: "Email or Username",
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
                controller: userNameController,
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
                  "Login",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                splashColor: Colors.greenAccent,
              ),
            ),
            Container(
              margin: buildEdgeInsetsText(),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ForgotPassword();
                  }));
                },
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.grey[700], fontSize: 17),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "or",
                  style: TextStyle(color: Colors.grey[600], fontSize: 14),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RegisterPage();
                    }));
                  },
                  child: Text(
                    "Create Account Now !",
                    style: TextStyle(color: Colors.green[400], fontSize: 14),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
