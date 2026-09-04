import 'package:flutter/material.dart';

class EggScreen extends StatelessWidget {
  const EggScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Dairy & Eggs",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search Store",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: const Color(0xffF2F3F2),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 0.72,
                children: [
                  productCard(
                    "Egg Chicken Red",
                    "\$1.99",
                    "assets/images/10f6d5b484482669b38064b6039c1e9dd1e416f7.png",
                  ),
                  productCard(
                    "Egg Chicken White",
                    "\$1.50",
                    "assets/images/09b308cf84be22c8238c907525e003ebe71e9b39.png",
                  ),
                  productCard(
                    "Egg Pasta",
                    "\$15.99",
                    "assets/images/8ccf8c9433799bda06a88a2ff38f4e4ce20efde2.png",
                  ),
                  productCard(
                    "Egg Noodles",
                    "\$15.99",
                    "assets/images/3b4d9d1008dbb56b6d3ff3a72b42ae1b7fbf710f.png",
                    
                  ),
                    productCard(
                    "Mayonnais Eggless",
                    "\$15.99",
                    "assets/images/90ce2d4b9f308252950c9054ee35c43012008b2f.png",
                  ),
                  productCard(
                    "Egg Noodles",
                    "\$15.99",
                    "assets/images/8bc90c6fa91f7f8bd89b0d44d668ec92792ead51.png",
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget productCard(
    String name,
    String price,
    String imagePath,
  ) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 80,
          ),
          const SizedBox(height: 10),
          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(price),
          const SizedBox(height: 10),
          Container(
            width: 45,
            height: 45,
            decoration: const BoxDecoration(
              color: Color(0xff53B175),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}