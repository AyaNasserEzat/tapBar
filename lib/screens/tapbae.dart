import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_world/components/customBoutton.dart';
import 'package:hello_world/components/customTextField.dart';
import 'package:hello_world/core/appImage.dart';
import 'package:hello_world/core/utiles/appColor.dart';
import 'package:hello_world/screens/signUp.dart';
import 'package:hello_world/screens/signin.dart';

class SignUp extends StatefulWidget {
  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 200,
              child: Image.asset(appImage.imgePath4),
            ),

            // the tab bar with two items
            SizedBox(
              height: 50,
              child: AppBar(
                elevation: 10,
                backgroundColor: appColor.white,
                bottom: TabBar(
                  tabs: [
                    Tab(
                      child: Text(
                        'sign in',
                        style: TextStyle(color: appColor.black),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'sign up',
                        style: TextStyle(color: appColor.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // create widgets for each tab bar here
            Expanded(
              child: TabBarView(
                children: [
                  // first tab bar view widget
                  Container(
                    child: SignIn(),
                  ),

                  // second tab bar viiew widget
                  Container(
                  child: SignUp2(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
