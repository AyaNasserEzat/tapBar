import 'package:flutter/material.dart';
import 'package:hello_world/core/utiles/appColor.dart';

class CustomButton extends StatelessWidget {
   CustomButton({Key? key,required this.text,@required this.widget}) : super(key: key);
 String text;
//Widget Function()? widgetcallback;
Widget? widget;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
              onPressed:(){ Navigator.push(context, MaterialPageRoute(builder:(context){
                return widget!;
              } ));
              },
              child: Text(
                text,
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: appColor.primaryColor,
              ),
            ),
          );
  }
}