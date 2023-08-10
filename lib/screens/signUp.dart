import 'package:flutter/material.dart';

import '../components/customBoutton.dart';
import '../components/customTextField.dart';

class SignUp2 extends StatelessWidget {
  const SignUp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children:[ Column(children: [
                CustomTextField(
                  hintText: 'phone number',
                  obscureText: false,
                  icon: Icon(Icons.phone),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hintText: 'email',
                  obscureText: false,
                  icon: Icon(Icons.email),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hintText: 'password',
                  obscureText: true,
                  icon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(Icons.visibility),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hintText: 'department',
                  obscureText: false,
                  suffixIcon: Icon(Icons.arrow_downward),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(text: 'sign Up'),
          ]),
          ],
        ),
      ),
    );
  }
  }