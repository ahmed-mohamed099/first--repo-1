


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/screens/shop_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int activeIndex=0;
  @override
  Widget build(BuildContext context) {
    return      Stack(
            alignment: Alignment.bottomCenter,
            
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height:119.0,
                  autoPlay:true,
                 viewportFraction: 1,
                 onPageChanged: (i,s){
                  setState(() {
                    activeIndex=i;
                  });

                 },
                 autoPlayInterval: Duration(seconds: 4),
                 //reverse: true,
                 enableInfiniteScroll: false
                  ),
                items:images.map((i)=>Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: Image.network(i).image
                      )
                  ),
     
                )).toList(),
              ),


 
          Positioned(
          bottom: 10,
         child: AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: images.length,
       effect: ExpandingDotsEffect(
       dotHeight: 10,
      dotWidth: 10,
      activeDotColor: Color(0xff53B175),
      dotColor: Colors.white,
      spacing: 4,
    ),
  ),
),



              
            ],
          );
  }
}


List<String> images=[
'https://grocerygo.infotechgravity.com/storage/app/public/admin-assets/images/slider/slider-667130d0e8062.png',
'https://www.tastingtable.com/img/gallery/13-most-affordable-grocery-stores-in-2023/l-intro-1679073677.jpg',
'https://demo.pluginic.com/product-slider-carousel/wp-content/uploads/sites/5/2023/05/slider-6-min.png',
'https://alvarezandmarsal-crg.com/wp-content/uploads/2024/02/AMCRG_Insights_Slider_Feb_Schnucks-Grocery.jpg',


];