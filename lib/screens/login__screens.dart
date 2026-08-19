import 'package:flutter/material.dart';
import 'package:grocery_app/screens/widgets/Login_from.dart';
import 'package:grocery_app/screens/widgets/custom_button.dart';
import 'package:grocery_app/screens/widgets/login_header.dart';
import 'signup_screen.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea( 
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          LoginHeader(),
          LoginFrom(),
          CustomButton(),

              

            
            ],
          ),
        ),
      ),
    );
  }
}