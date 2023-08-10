import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_world/components/customBoutton.dart';
import 'package:hello_world/core/appImage.dart';
import 'package:hello_world/core/utiles/appColor.dart';
import 'package:hello_world/core/utiles/appString.dart';
import 'package:hello_world/screens/signin.dart';
import 'package:hello_world/screens/tapbae.dart';

import 'onBordingScreen3.dart';

class onBordingScreen3 extends StatelessWidget {
  const onBordingScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          const SizedBox(
            height: 60,
          ),
          SizedBox(
              width: 250, height: 250, child: Image.asset(appImage.imgePath3)),
          const SizedBox(
            height: 20,
          ),
          Text(
            appString.onBordingTitle3,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: appColor.black,
              fontSize: 24,
            ),
          ),
          Text(
            appString.onBordingSubTitle3,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: appColor.secondryColor,
              fontSize: 17,
            ),
          ),
          const Spacer(),
          CustomButton(text: appString.start,widget :SignUp(),
          
         ),
        ]),
      ),
    );
  }
}
