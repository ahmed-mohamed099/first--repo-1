import 'package:flutter/material.dart';
import 'egg_screen.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool eggs = true;
  bool noodles = false;
  bool chips = false;
  bool fastFood = false;

  bool individual = false;
  bool cocola = true;
  bool ifad = false;
  bool kazi = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F3F2),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close, color: Colors.black),
        ),
        title: const Text(
          "Filters",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.all(25),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Categories",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 20),

            CheckboxListTile(
              value: eggs,
              activeColor: const Color(0xff53B175),
              title: const Text("Eggs"),
              onChanged: (value) {
                setState(() {
                  eggs = value!;
                });
              },
            ),

            CheckboxListTile(
              value: noodles,
              activeColor: const Color(0xff53B175),
              title: const Text("Noodles & Pasta"),
              onChanged: (value) {
                setState(() {
                  noodles = value!;
                });
              },
            ),

            CheckboxListTile(
              value: chips,
              activeColor: const Color(0xff53B175),
              title: const Text("Chips & Crisps"),
              onChanged: (value) {
                setState(() {
                  chips = value!;
                });
              },
            ),

            CheckboxListTile(
              value: fastFood,
              activeColor: const Color(0xff53B175),
              title: const Text("Fast Food"),
              onChanged: (value) {
                setState(() {
                  fastFood = value!;
                });
              },
            ),

            const SizedBox(height: 20),

            const Text(
              "Brand",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 20),

            CheckboxListTile(
              value: individual,
              activeColor: const Color(0xff53B175),
              title: const Text("Individual Collection"),
              onChanged: (value) {
                setState(() {
                  individual = value!;
                });
              },
            ),

            CheckboxListTile(
              value: cocola,
              activeColor: const Color(0xff53B175),
              title: const Text("Cocola"),
              onChanged: (value) {
                setState(() {
                  cocola = value!;
                });
              },
            ),

            CheckboxListTile(
              value: ifad,
              activeColor: const Color(0xff53B175),
              title: const Text("Ifad"),
              onChanged: (value) {
                setState(() {
                  ifad = value!;
                });
              },
            ),

            CheckboxListTile(
              value: kazi,
              activeColor: const Color(0xff53B175),
              title: const Text("Kazi Farmas"),
              onChanged: (value) {
                setState(() {
                  kazi = value!;
                });
              },
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              height: 65,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff53B175),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
  if (eggs) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const EggScreen(),
      ),
    );
  }
},
                child: const Text(
                  "Apply Filter",
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