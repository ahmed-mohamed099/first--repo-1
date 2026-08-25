import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  final String image;
  final String name;
  final String subTitle;
  final String price;

  const ProductDetailsScreen({
    super.key,
    required this.image,
    required this.name,
    required this.subTitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                image,
                height: 250,
              ),
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        subTitle,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),

                const Icon(
                  Icons.favorite_border,
                  size: 30,
                ),
              ],
            ),

            const SizedBox(height: 25),

            Row(
              children: [
                const Icon(Icons.remove, size: 28),

                const SizedBox(width: 20),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    "1",
                    style: TextStyle(fontSize: 18),
                  ),
                ),

                const SizedBox(width: 20),

                const Icon(
                  Icons.add,
                  color: Colors.green,
                  size: 28,
                ),

                const Spacer(),

                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            const Divider(),

            const SizedBox(height: 10),

            const Text(
              "Product Detail",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet..",
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 20),

            const Divider(),

            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text("Nutrition"),
              trailing: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text("100g"),
              ),
            ),

            const Divider(),

            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text("Review"),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: Colors.orange),
                  Icon(Icons.star, color: Colors.orange),
                  Icon(Icons.star, color: Colors.orange),
                  Icon(Icons.star, color: Colors.orange),
                  Icon(Icons.star, color: Colors.orange),
                ],
              ),
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff53B175),
                ),
                onPressed: () {},
                child: const Text(
                  "Add To Basket",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}