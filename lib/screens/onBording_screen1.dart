import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_world/core/appImage.dart';
import 'package:hello_world/core/utiles/appColor.dart';
import 'package:hello_world/core/utiles/appString.dart';

import 'onBordingScreen2.dart';

class onBordingScreen1 extends StatelessWidget {
  const onBordingScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Row(
            children: [
              Spacer(),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    appString.skip,
                    style: GoogleFonts.poppins(
                        fontSize: 16, color: appColor.secondryColor),
                  )),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          SizedBox(
              width: 300, height: 300, child: Image.asset(appImage.imgePath1)),
          SizedBox(
            height: 20,
          ),
          Text(
            appString.onBordingTitle1,
            style: GoogleFonts.poppins(
              color: appColor.black,
              fontSize: 24,
            ),
          ),
          Text(
            appString.onBordingSubTitle1,
            style: GoogleFonts.poppins(
              color: appColor.secondryColor,
              fontSize: 17,
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 127,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return onBordingScreen2();
                    }));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        appString.Next,
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: appColor.primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
