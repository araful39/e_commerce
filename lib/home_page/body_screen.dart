

import 'package:e_commerce/home_page/sale_screen.dart';
import 'package:flutter/material.dart';

import 'Bottombar/category_screen.dart';
import 'Bottombar/person_screen.dart';

class BodyScreen extends StatefulWidget {
  const BodyScreen({super.key});

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  var sindex=0;
  List<Widget> _pages=[
    CategoryScreen(),SaleScreen(),PersonScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEDEEE1),

        body:Center(
        child: _pages.elementAt(sindex),),





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
      ),
    );
  }
}
