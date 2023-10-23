import 'package:e_commerce/Body/Body.dart';
import 'package:e_commerce/Signin.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
var pass;
var cheak=false;

void initState(){
  pass=true;
}
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDEEE1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: SizedBox(height: 240,width: double.infinity,
                child:
                Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,top: 25),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(color: Colors.black),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.teal,
                                style: BorderStyle.solid,
                                width: 2.0,

                              ),

                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                style: BorderStyle.solid,
                                width: 2.0,
                                color: Colors.teal
                              )
                            )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,top: 25),
                        child: TextField(
                          obscureText:pass,
                          obscuringCharacter: "*",

                          decoration: InputDecoration(
                            suffix: GestureDetector(
                                onTap:(){
                                  setState(() {
                                    pass=!pass;
                                  });
                                },
                                child: Text(pass?"Show":"Hide")),
                              labelText: "Password",

                              labelStyle: TextStyle(color: Colors.black),

                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Colors.teal,
                                  style: BorderStyle.solid,
                                  width: 2.0,

                                ),

                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      style: BorderStyle.solid,
                                      width: 2.0,
                                      color: Colors.teal
                                  )
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18,right: 20,top: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  activeColor: Colors.teal,
                                    checkColor: Color(0xffFFC300),
                                    value: cheak, onChanged: (value){
                                  setState(() {
                                   cheak=!cheak;
                                  });
                                }),
                                Text("Remamber",style: TextStyle(color: Colors.black),),
                              ],
                            ),

                            Text("Forget Password?",style: TextStyle(color: Colors.black),),

                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Body()));
              },
              child: SizedBox(
                width: 200,
                height: 60,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Color(0xffFFC300),
                  child: Center(
                      child: Text(
                        "Log In",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Don't have an account?",style: TextStyle(color: Colors.black),),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin()));
                    },
                      child: Text("Create an account",style: TextStyle(color: Color(0xffFFC300)),))

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
