


import 'package:flutter/material.dart';
import 'package:grocery_app/screens/widgets/account_info.dart';
import 'package:grocery_app/screens/widgets/account_option.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

 @override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 16.0,
      vertical: 20,
    ),
    child: SingleChildScrollView(
      child: Column(
        children: [
          AccountInfo(),
          SizedBox(height: 30),
          Divider(),

          AccountOption(
            icon: Icons.breakfast_dining_outlined,
            text: 'orders',
          ),
          AccountOption(
            icon: Icons.details,
            text: 'my details',
          ),
          AccountOption(
            icon: Icons.location_city_outlined,
            text: 'Delivery Address',
          ),
          AccountOption(
            icon: Icons.payment,
            text: 'Payment Methods',
          ),
          AccountOption(
            icon: Icons.code_outlined,
            text: 'PromoCord',
          ),
          AccountOption(
            icon: Icons.notification_add_outlined,
            text: 'Notifecations',
          ),
          AccountOption(
            icon: Icons.help_center_outlined,
            text: 'Help',
          ),
          AccountOption(
            icon: Icons.info_outline,
            text: 'About',
          ),

          SizedBox(height: 15),

          GestureDetector(
  onTap: () {
    Navigator.pushNamedAndRemoveUntil(
      context,
      '/login',
      (route) => false,
    );
  },
  child: Container(
    height: 67,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Color(0xffF2F3F2),
      borderRadius: BorderRadius.circular(19),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.logout,
          color: Color(0xff53B175),
        ),
        SizedBox(width: 10),
        Text(
          "Log Out",
          style: TextStyle(
            color: Color(0xff53B175),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  ),
),
        ],
      ),
    ),
  );
}
}