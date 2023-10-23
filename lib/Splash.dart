

import 'dart:async';

import 'package:flutter/material.dart';

import 'Start.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
void initState(){
  super.initState();
  Timer(Duration(seconds: 2),()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Start())));
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
