import 'package:flutter/material.dart';
import 'components.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: buildEdgeInsetsLogo(),
              child: Image.asset("assets/images/login.png"),
            ),
            Container(
              margin: buildEdgeInsetsTextField(),
              child: TextField(
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
              child: Text(
                "Forgot Password?",
                style: TextStyle(color: Colors.grey[700], fontSize: 17),
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
                Text(
                  "Create Account Now !",
                  style: TextStyle(color: Colors.green[400], fontSize: 14),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
