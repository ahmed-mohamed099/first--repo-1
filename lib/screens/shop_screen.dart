


import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/screens/groceries.dart';
import 'package:grocery_app/screens/widgets/home_search_filed.dart';
import 'package:grocery_app/screens/widgets/home_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:grocery_app/screens/widgets/product_card.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.27),
      child: SingleChildScrollView(
        child: Column(
        children: [
      
          //image
          Center(child: Image.asset("assets/images/Group.png",
          width: 30,
          )),
        
        SizedBox(height: 7.6,),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on),
              Text("Dhaka, Banassre",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xff4C4F4D)
      
              ),),
            ],
          ),


          SizedBox(height: 20,),
          
          HomeSearchFiled(),
          SizedBox(height: 20,),
     

     HomeSlider(),
     SizedBox(height: 20),

Text(
  "Exclusive Offer",
  style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  ),
),

SizedBox(height: 20),


SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
      children: [
        ProductCard(
    image: "assets/images/banana-8175923_1280.jpg",
    name: "Organic Bananas",
    subTitle: "7pcs, Priceg",
    price: "\$4.99",
  ),
  SizedBox(width: 15,),
   ProductCard(
    image: "assets/images/2020_12_23_14_53_15_899.jpg",
    name: "Ginzibil",
    subTitle: "7pcs, Priceg",
    price: "\$4.99",
  ),
  SizedBox(width: 15),
  
  ProductCard(
    image: "assets/images/download-apples-png-image-red-apple-fruit-10.png",
    name: "Red Apple",
    subTitle: "1kg, Priceg",
    price: "\$4.99",
  ),
      ],
    
  ),
),


SizedBox(height: 20),
Align(
  alignment: Alignment.centerLeft,
  child: Text(
    "Best Selling",
    
    
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  ),
),
SizedBox(height: 20),

SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child:Row( 
    children: [
      ProductCard(
        image: "assets/images/pngtree-red-chilli-peppers-on-white-background-habanero-png-image_10574576.png",
        name: "Red Pepper",
        subTitle: "1kg, Price",
        price: "\$4.99",
      ),

      SizedBox(width: 15),

      ProductCard(
        image: "assets/images/download-apples-png-image-red-apple-fruit-10.png",
        name: "Red Apple",
        subTitle: "1kg, Price",
        price: "\$4.99",

      ),
    SizedBox(width: 15),


ProductCard(
  image: "assets/images/2020_12_23_14_53_15_899.jpg",
  name: "Ginzbil and Naana",
  subTitle: "7pcs, Price",
  price: "\$4.99",
),

SizedBox(width: 15),

ProductCard(
  image: "assets/images/pngtree-realistic-red-bell-pepper-on-white-background-png-image_12689863.png",
  name: "peppers",
  subTitle: "1kg, Price",
  price: "\$4.99",

      ),
    ],
  ),
),
SizedBox(height: 20),
Align(
  alignment: Alignment.centerLeft,
  child: Text(
    "Groceries",
    
    
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  ),
),
SizedBox(height: 15,),
SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: [
      Groceries(image: "assets/images/Why-Pulses-Are-Good-For-You-1024x683.jpg", text: "Pulses",color: Colors.orange.shade100,),
      SizedBox(width: 20,),
        Groceries(image: "assets/images/8-82858_download-sack-of-rice-png 1.png", text: "Rice",color: Colors.green.shade100,)
    ],
  ),
),
SizedBox(height: 25,),
SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row( 
      children: [
        ProductCard(
          image: "assets/images/pngfuel 4.png",
          name: "Beef",
          subTitle: "1kg, Price",
          price: "\$4.99",
        ),
  
        SizedBox(width: 15),
  
        ProductCard(
          image: "assets/images/pngfuel 5.png",
          name: "chickan",
          subTitle: "1kg, Price",
          price: "\$4.99",
  
        ),
      SizedBox(width: 15),
  
  
  ProductCard(
    image: "assets/images/2020_12_23_14_53_15_899.jpg",
    name: "Ginzbil and Naana",
    subTitle: "7pcs, Price",
    price: "\$4.99",
  ),
  
  SizedBox(width: 15),
  
  ProductCard(
    image: "assets/images/pngtree-realistic-red-bell-pepper-on-white-background-png-image_12689863.png",
    name: "peppers",
    subTitle: "1kg, Price",
    price: "\$4.99",
  
        ),
      ],
    ),
),

// 

],
     

          
      
      
      
      
      
    
      
       
      ), // SingleChildScrollView
), // Padding
), // SingleChildScrollView
      
        
      );





  }
}



