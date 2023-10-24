

import 'package:e_commerce/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {

  var pass;
  var cheak=false;

  void initState(){
    pass=true;
  }
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffEDEEE1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: SizedBox(height: h/0.8,width: w/0.5,
                child:
                Card(
                  color: Colors.white,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(

                      children: [

                        Text("Create your account",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),

                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,top: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Full Name",style: TextStyle(color: Colors.black),),
                              TextField(
                                decoration: InputDecoration(
                                    //labelText: "Email",
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
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,top: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Your email address",style: TextStyle(color: Colors.black),),

                              TextField(
                                decoration: InputDecoration(
                                  //labelText: "Email",
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
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,top: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Password",style: TextStyle(color: Colors.black),),

                              TextField(
                                decoration: InputDecoration(
                                  //labelText: "Email",
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
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,top: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Confirm password",style: TextStyle(color: Colors.black),),

                              TextField(
                                decoration: InputDecoration(
                                  //labelText: "Email",
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
                            ],
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
                                      activeColor: Colors.white54,
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
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                          },
                          child: SizedBox(
                            width: 200,
                            height: 60,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color:Color(0xffFFC300),
                              child: Center(
                                  child: Text(
                                    "Create new",
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
                              Text("Create an account",style: TextStyle(color: Color(0xffFFC300)),)

                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Divider(
                            color: Colors.black,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("By cheaking Sign Up you agree to that ",style: TextStyle(color: Colors.black),),
                            Text("Terms & Privecy Policy ",style: TextStyle(color: Color(0xffFFC300)),),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
