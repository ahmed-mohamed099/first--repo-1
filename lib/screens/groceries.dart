


import 'package:flutter/material.dart';

class Groceries extends StatelessWidget {
   Groceries({super.key,this.color,required this.image,required  this.text});
Color? color;
String image;
String text ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 270,
     

      decoration: BoxDecoration(
      color: color,

        
        borderRadius: BorderRadius.circular(18),

      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(image,height: 95,width: 85,),
          ),
          SizedBox(width: 15,),
          Text(text,style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,color: Colors.black,
          ),),


        ],
      ),
    );
  }
}