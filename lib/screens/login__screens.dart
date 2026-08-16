import 'package:flutter/material.dart';
import 'signup_screen.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea( 
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 28.42,
              ),
              Center(child: Image.asset("assets/images/Group.png")),
              SizedBox(
                height: 100.2,
              ),
              Text("Login",style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                color: Color(0xff181725)
              ),),
              SizedBox(height:15,),
              Text("Enter your emails and password",style: TextStyle(
                fontSize: 16
              ),),
            TextFormField(
              onTapOutside: (value){
                FocusScope.of(context).unfocus();
              },
              decoration: InputDecoration(
                labelText: "Email",
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffE2E2E2)
                  )
                ),

                focusedBorder:UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff53B175)
                  )
                )
                
              ),

            ),

                  TextFormField(
              decoration: InputDecoration(
                labelText: "password",
                     enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffE2E2E2)
                  )),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff53B175)
                    )
                  )
              )),

            SizedBox(height: 10,),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(onPressed: (){}, child: Text("forget password?",style: TextStyle(color: Colors.green),))
              ),
              SizedBox(height: 30,),
              InkWell(
                onTap: () {
                  print ("on Tapped");
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    color: Color(0xff53B175),
                  ),
                  child: Center(child: Text("Login",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFFF9FF)
                  ),
                  )),
                ),
              ),
              SizedBox(height: 25,),

              Row(mainAxisAlignment: MainAxisAlignment.center
                ,children: [
                Text("Don’t have an account?",style: TextStyle(
                  fontWeight: FontWeight.w600
                ),),
                InkWell(
              onTap: () {
              Navigator.push(
             context,
              MaterialPageRoute(
               builder: (context) => const Signupscreen(),
             ),
                );
                },
                     child: Text(
                   "Singup",
                style: TextStyle(
               fontWeight: FontWeight.w600,
                  color: Color(0xff53B175),
                 ),
                 ),
             ),
             
              ],)


            
            ],
          ),
        ),
      ),
    );
  }
}