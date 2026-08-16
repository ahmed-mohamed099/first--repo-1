import 'package:flutter/material.dart';


class Signupscreen extends StatelessWidget {
  const Signupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 28),

                // Carrot Logo
                Center(
                  child: Image.asset("assets/images/Group.png", width: 50,),
                   
                  
                  ),
              
                

                const SizedBox(height: 100.2),

                // Sign Up
                const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff181725),
                  ),
                ),

                const SizedBox(height: 15),

                // Description
                const Text(
                  "Enter your credentials to continue",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 30),

                // Username
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Username",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffE2E2E2),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff53B175),
                      ),
                    ),
                  ),
                ),

                // Email
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffE2E2E2),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff53B175),
                      ),
                    ),
                  ),
                ),

                // Password
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    suffixIcon: Icon(
                      Icons.visibility_off_outlined,
                      color: Colors.grey,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffE2E2E2),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff53B175),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // Terms
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    children: [
                      TextSpan(
                        text: "By continuing you agree to our ",
                      ),
                      TextSpan(
                        text: "Terms of Service",
                        style: TextStyle(
                          color: Color(0xff53B175),
                        ),
                      ),
                      TextSpan(
                        text: " and ",
                      ),
                      TextSpan(
                        text: "Privacy Policy.",
                        style: TextStyle(
                          color: Color(0xff53B175),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // Sign Up Button
                InkWell(
                  onTap: () {
                    print("Sign Up Tapped");
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 22,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xff53B175),
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: const Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // Login
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account? ",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff53B175),
                        ),
                      ),
                    ),
                  ],
                ),

             
             
               const SizedBox(height: 20),
              ]
            )             
            ),
          ),
        ),
      );
    
  }
}