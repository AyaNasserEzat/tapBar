import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_world/core/appImage.dart';
import 'package:hello_world/core/utiles/appColor.dart';
import 'package:hello_world/core/utiles/appString.dart';

import 'onBordingScreen3.dart';

class onBordingScreen2 extends StatelessWidget {
  const onBordingScreen2({Key? key}) : super(key: key);

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
              width: 300, height: 300, child: Image.asset(appImage.imgePath2)),
          SizedBox(
            height: 20,
          ),
          Text(
            appString.onBordingTitle2,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: appColor.black,
              fontSize: 24,
            ),
          ),
          Text(
            appString.onBordingSubTitle2,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: appColor.secondryColor,
              fontSize: 17,
            ),
          ),
          Spacer(),
          Row(
            children: [
               SizedBox(
            width: 60,
            height: 60,
            child: ElevatedButton(
              onPressed: () {
                
                Navigator.pop(context);
              },
            
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: appColor.primaryColor,
              ), child: Icon(Icons.arrow_back),
            ),
          ),
          //SizedBox(width: 70,),
          Spacer(),
              SizedBox(
                width: 127,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    //Navigator.pushNamed(context, 'onBordingScreen3');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return onBordingScreen3();
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
