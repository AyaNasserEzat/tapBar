import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({Key? key,required this.hintText,@required this.icon,@required this.suffixIcon,@required this.obscureText}) : super(key: key);
 String hintText;
 Widget? icon;
 Widget? suffixIcon;
 bool? obscureText=false;
  @override
  Widget build(BuildContext context) {
    return   TextField(
      obscureText:obscureText! ,
           decoration: InputDecoration(
     contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),),
            hintText: hintText,
            prefixIcon: icon,
            suffixIcon: suffixIcon,
           ) 
    );
  }
}