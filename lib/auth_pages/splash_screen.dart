



import 'dart:async';

import 'package:e_commerce/start_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
void initState(){
  super.initState();
  Timer(Duration(seconds: 2),()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>StartScreen())));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDEEE1),
      body: Center(
        child: SizedBox(width: 200,height: 200,
          child: Card(
            color: Color(0xffFFC300),
            child: Center(
              child: Center(child: Text("R",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),)),
            ),
          ),
        ),
      ),
    );
  }
}
