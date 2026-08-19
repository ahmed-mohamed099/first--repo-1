


import 'package:flutter/material.dart';
import 'package:grocery_app/screens/bottom_nev_bar_screen.dart';
import 'package:grocery_app/screens/login__screens.dart';

class GorceryApp extends StatelessWidget {
  const GorceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNevBarScreen(),
    );
    
  }
}