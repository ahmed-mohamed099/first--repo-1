


import 'package:flutter/material.dart';

class HomeSearchFiled extends StatelessWidget {
  const HomeSearchFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return         TextField(
            cursorColor: Color(0xff53B175),
            
          
            onTapOutside: (v){
              FocusScope.of(context).unfocus();
            },
            decoration: InputDecoration(
            fillColor:Color(0xffF2F3F2) ,  
            hintText: "Search Store",
            prefix: Icon(Icons.search),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
              
            ),
            focusedBorder:  OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
              
            ),
            ),
      
          );
    
  }
}