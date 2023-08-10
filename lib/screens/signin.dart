import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_world/components/customBoutton.dart';
import 'package:hello_world/components/customTextField.dart';
import 'package:hello_world/core/appImage.dart';
import 'package:hello_world/core/utiles/appColor.dart';
import 'package:hello_world/screens/tapbae.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child:ListView(
          children:[ Column(children: [
        
          CustomTextField(hintText: 'email',obscureText: false, icon: Icon(Icons.email),),
         const SizedBox(height: 20,),
          CustomTextField(hintText: 'password',obscureText: true, icon: Icon(Icons.lock,),suffixIcon: Icon(Icons.visibility),),
           const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Forget password',style: GoogleFonts.poppins(fontSize: 16,color: appColor.secondryColor),),
            ],
          ),
         const   SizedBox(height: 30,),
          CustomButton(text: 'sign in',widget: SignUp(),),
        ],
        ),
          ],
        ),
          
      ),
          
      
    );
  }
}