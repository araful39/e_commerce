import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<Map<String,dynamic>> data=[
    {
      "img":"Images/fish.png","text":"Fish"
    },
    {
      "img":"Images/shoes.png","text":"Shoes"
    },
    {
      "img":"Images/sunglass.png","text":"Sunglass"
    },

    {
      "img":"Images/tshirt.png","text":"T-shirt"
    },
    {
      "img":"Images/cricket.png","text":"Cricket"
    },
    {
      "img":"Images/fish.png","text":"Fish"
    },
    {
      "img":"Images/shoes.png","text":"Shoes"
    },
    {
      "img":"Images/sunglass.png","text":"Sunglass"
    },

    {
      "img":"Images/tshirt.png","text":"T-shirt"
    },

    {
      "img":"Images/more.png","text":"More"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFFC300),
        elevation: 0,
        title: SizedBox(width: double.infinity,
          height: 40,
          child: SearchBar(constraints: BoxConstraints(

          ),
            hintText: "Search...",


            leading: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.search,color: Colors.black,)),

          ),
        ),
      ),
        body: SafeArea(
          child: GridView.builder(itemCount: data.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              mainAxisSpacing: 2,
             ),
              itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 100,
                height: 100,
                child: Card(
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(data[index]["img"],color: Color(0xffFFC300),width: 100,height: 100,),
                        Text(data[index]["text"],style: TextStyle(color: Colors.black),)
                      ],
                    ),
                  ),
                ),
              ),
            );
              }),
        ),
    );
  }
}
