import 'package:e_commerce/Body/Bottombar/Account.dart';
import 'package:e_commerce/Body/Bottombar/Category.dart';
import 'package:e_commerce/Body/Bottombar/Shopping.dart';
import 'package:e_commerce/Body/Sale.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var sindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDEEE1),

      body:Stack(
        children: [
          Offstage(
            offstage: sindex!=0,
            child: TickerMode(
              enabled: sindex==0,
              child: MaterialApp(home: Category(),),
            ),
          ),
          Offstage(
            offstage: sindex!=1,
            child: TickerMode(
              enabled: sindex==1,
              child: MaterialApp(home: Sale(),),
            ),
          ),
          Offstage(
            offstage: sindex!=2,
            child: TickerMode(
              enabled: sindex==2,
              child: MaterialApp(home: Account(),),
            ),
          ),
        ],
      ),






      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,

        backgroundColor: Color(0xffFFC300),
        currentIndex: sindex,
        onTap: (index){
          setState(() {
            sindex=index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.category,),label:"Category"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,),label:"Shopping"),

          BottomNavigationBarItem(icon: Icon(Icons.person,),label:"Account"),


        ],
      ),
    );
  }
}
