import 'package:flutter/material.dart';
import 'favorite_data.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: FavoriteData.items.isEmpty
                ? const Center(
                    child: Text(
                      "No Favorites Yet",
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                : ListView.builder(
                    itemCount: FavoriteData.items.length,
                    itemBuilder: (context, index) {
                      final item = FavoriteData.items[index];

                      return ListTile(
                        leading: Image.asset(
                          item["image"]!,
                          width: 60,
                          height: 60,
                        ),
                        title: Text(item["name"]!),
                        subtitle: Text(item["price"]!),
                      );
                    },
                  ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff53B175),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Added All To Cart"),
                    ),
                  );
                },
                child: const Text(
                  "Add All To Cart",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}