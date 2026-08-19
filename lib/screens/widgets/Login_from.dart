



import 'package:flutter/material.dart';

class LoginFrom extends StatelessWidget {
  const LoginFrom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
              

      ],
    );
  
  }
}