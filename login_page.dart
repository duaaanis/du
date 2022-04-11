import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool ChangeButton = false;
  

  

  @override
  Widget build(BuildContext context) {
    var white;
    var done;
    // ignore: prefer_typing_uninitialized_variables
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "duaa/images/login_page.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text("Welcome $name",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter username",
              labelText: "Username",
            ),
            onChanged: (value) {
              name = value;
              setState(() {});
            },
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter password",
              labelText: "Password",
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          InkWell(
            onTap: () async {
              setState(() {
                ChangeButton = true;
              });
              await Future.delayed(const Duration(seconds: 1));
              await Navigator.pushNamed(
                   context, MyRoutes.homeRoute);
                   setState(() {
                ChangeButton = false;
              });
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              width: ChangeButton ? 50 : 150,
              height: 50,
              alignment: Alignment.center,
              child: ChangeButton
              ?Icon(
                Icons.done,
                color: Colors.white,
                )
                :Text(
                "login",
                style: TextStyle(
                    color: white, fontWeight: FontWeight.bold, fontSize: 18),
              ),
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                 //shape: ChangeButton
                 // ?BoxShape.circle
                  //: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(ChangeButton ? 50 :8)),
            ),
          ),
          // ElevatedButton(
          // child: Text("login"),
          // style: TextButton.styleFrom(minimumSize: Size(150, 40)),
          // onPressed: () {
          // Navigator.pushNamed(context, MyRoutes.homeRoute);
          // },
          // ),
        ],
      ),
    );
  }
}
