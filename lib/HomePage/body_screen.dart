
import 'package:e_commerce/HomePage/Bottombar/person_screen.dart';
import 'package:e_commerce/HomePage/Bottombar/category_screen.dart';
import 'package:e_commerce/HomePage/sale_screen.dart';
import 'package:flutter/material.dart';

class BodyScreen extends StatefulWidget {
  const BodyScreen({super.key});

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  var sindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDEEE1),

      body:SafeArea(
        child: Stack(
          children: [
            Offstage(
              offstage: sindex!=0,
              child: TickerMode(
                enabled: sindex==0,
                child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  home: CategoryScreen(),),
              ),
            ),
            Offstage(
              offstage: sindex!=1,
              child: TickerMode(
                enabled: sindex==1,
                child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  home: SaleScreen(),),
              ),
            ),
            Offstage(
              offstage: sindex!=2,
              child: TickerMode(
                enabled: sindex==2,
                child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  home: PersonScreen(),),
              ),
            ),
          ],
        ),
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
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,),label:"Sale"),

          BottomNavigationBarItem(icon: Icon(Icons.person,),label:"Account"),


        ],
      ),
    );
  }
}
