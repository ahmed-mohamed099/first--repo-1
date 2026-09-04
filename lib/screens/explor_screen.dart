import 'package:flutter/material.dart';
import 'egg_screen.dart';
import 'filter_screen.dart';
import 'cart_data.dart';

class ExplorScreen extends StatefulWidget {
  const ExplorScreen({super.key});

  @override
  State<ExplorScreen> createState() => _ExplorScreenState();
}

class _ExplorScreenState extends State<ExplorScreen> {
  bool showProducts = false;
  String categoryName = "";
  String searchText = "";
  List<Map<String, String>> eggProducts = [
  {
    "name": "Egg Chicken Red",
    "price": "\$1.99",
    "image": "assets/images/egg1.png",
  },
  {
    "name": "Egg Chicken White",
    "price": "\$1.50",
    "image": "assets/images/egg2.png",
  },
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        actions: [
  IconButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const FilterScreen(),
        ),
      );
    },
    icon: const Icon(
      Icons.tune,
      color: Colors.black,
    ),
  ),
],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        
        leading: showProducts
            ? IconButton(
                onPressed: () {
                  setState(() {
                    showProducts = false;
                  });
                },
                icon: const Icon(Icons.arrow_back, color: Colors.black),
              )
            : null,
        title: Text(
          showProducts ? categoryName : "Find Products",
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
         TextField(
  onChanged: (value) {
    setState(() {
      searchText = value;
    });
  },
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
              child: showProducts
                  ? GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      childAspectRatio: 0.72,
                      children: [
                        productCard(
                          "Diet Coke",
                          "\$1.99",
                          "assets/images/f3cfc007e1a35a6c74c3d90bebf449a08c8072cf.png",
                        ),
                        productCard(
                          "Sprite",
                          "\$1.50",
                          "assets/images/d2f3f8693088e089e4cfee3167faeb848cf9ea96 (1).png",
                        ),
                        productCard(
                          "Apple Juice",
                          "\$15.99",
                          "assets/images/e3f6fb1693ed22eec33505ff5f6f4f54c442e1c5.png",
                        ),
                        productCard(
                          "Orange Juice",
                          "\$15.99",
                          "assets/images/935fcc322f02c5d46a9e7043bc8445d6e37cb19d.png",
                        ),
                        productCard(
                          "Coca Cola",
                          "\$4.99",
                          "assets/images/a6501a3ca88c17d9ec33d6b348ad9b9b3078ccfb.png",
                        ),
                        productCard(
                          "Pepsi",
                          "\$4.99",
                          "assets/images/5e28052a3a50959340e109824c42dd0c99b5f377.png",
                        ),
                      ],
                    )
                  : GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      childAspectRatio: 0.85,
                      children: [
                        card(
                          "Fresh Fruits\n& Vegetable",
                          const Color(0xffEEF7F0),
                          "assets/images/ca51c56fc6c319bfab3990da934ed0eb9c5ae3e7.png",
                        ),
                        card(
                          "Cooking Oil\n& Ghee",
                          const Color(0xffFFF8E5),
                          "assets/images/6bc8dddff5d852ef29933852ca183be51838587e.png",
                        ),
                        card(
                          "Meat & Fish",
                          const Color(0xffFDE8E4),
                          "assets/images/22d3aac257974f1aad9e0ec045f5bfc22ef5a6ab.png",
                        ),
                        card(
                          "Bakery & Snacks",
                          const Color(0xffF4EBF7),
                          "assets/images/e2faac00a6029bf4a611c1016eaf4b8f75db6d65.png",
                        ),
                        card(
                          "Dairy & Eggs",
                          const Color(0xffFFFBE6),
                          "assets/images/94ca9c0c443493293986632d57e9fb6f1e3b963f.png",
                        ),
                        card(
                          "Beverages",
                          const Color(0xffEDF7FC),
                          "assets/images/cf75912987c6a2d11af9c6213699a2c5c6e3fb48.png",
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget card(String title, Color color, String imagePath) {
    return GestureDetector(
   onTap: () {
  if (title == "Dairy & Eggs") {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const EggScreen(),
    ),
  );
} else if (title == "Beverages") {
  setState(() {
    showProducts = true;
    categoryName = title;
  });
}
},
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 70,
            ),
            const SizedBox(height: 12),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
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

         GestureDetector(
  onTap: () {
    CartData.items.add({
      "name": name,
      "price": price,
      "image": imagePath,
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("$name added to cart"),
      ),
    );
  },
  child: Container(
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
),
        ],
      ),
    );
  }
}