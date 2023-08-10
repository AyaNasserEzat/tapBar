import 'package:flutter/material.dart';
import 'package:hello_world/screens/onBordingScreen2.dart';
import 'package:hello_world/screens/onBordingScreen3.dart';
import 'package:hello_world/screens/onBording_screen1.dart';

void main() {
  runApp(BirthdayCard());
}

class BirthdayCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*routes: {
        'onBordingScreen2':(context) =>onBordingScreen2(),
          'onBordingScreen3':(context) =>onBordingScreen3(),
      },*/
      debugShowCheckedModeBanner: false,
     // initialRoute: 'onBordingScreen1',
     home: onBordingScreen1(),
    );
  }
}
