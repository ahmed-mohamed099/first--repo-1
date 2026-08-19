

import 'package:flutter/material.dart';
import 'package:grocery_app/screens/signup_screen.dart';

class DontHaveWidget extends StatelessWidget {
  const DontHaveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center
                ,children: [
                Text("Don’t have an account?",style: TextStyle(
                  fontWeight: FontWeight.w600
                ),),
                InkWell(
              onTap: () {
              Navigator.push(
             context,
              MaterialPageRoute(
               builder: (context) => const Signupscreen(),
             ),
                );
                },
                     child: Text(
                   "Singup",
                style: TextStyle(
               fontWeight: FontWeight.w600,
                  color: Color(0xff53B175),
                 ),
                 ),
             ),
             
              ],)
;
  }
}