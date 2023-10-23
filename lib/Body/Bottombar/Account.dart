import 'package:e_commerce/Body/Blance.dart';
import 'package:e_commerce/Body/Review.dart';
import 'package:e_commerce/Body/Status.dart';
import 'package:e_commerce/Body/Total.dart';
import 'package:e_commerce/Login.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffEDEEE1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            CircleAvatar(
           maxRadius: 78,
              backgroundColor:  Color(0xffFFC300),
              child: ClipOval(
                child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg/220px-Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg",
                  width: 140,
                  height: 140,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text("Raju islam",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on_outlined,color: Color(0xffFFC300),),
                Text("Dhaka,Bangladesh",style: TextStyle(color: Colors.black,),),
              ],
            ),
            Card(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Blance()));
                      },
                      child: ListTile(
                        title: Text("Blance",style: TextStyle(color: Colors.black,fontSize: 20),),
                        trailing: Icon(Icons.arrow_forward_ios_outlined,color: Color(0xffFFC300),size: 20,),
                      ),
                    ),
                    Divider(),
                    InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Total()));
                      },
                      child: ListTile(
                        title: Text("Total",style: TextStyle(color: Colors.black,fontSize: 20),),
                        trailing: Icon(Icons.arrow_forward_ios_outlined,color: Color(0xffFFC300),size: 20,),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Text("Order History",style: TextStyle(color: Colors.black,fontSize: 20),),
                      trailing: Icon(Icons.arrow_forward_ios_outlined,color: Color(0xffFFC300),size: 20,),
                    ),
                    Divider(),
                    ListTile(
                      title: Text("Payment History",style: TextStyle(color: Colors.black,fontSize: 20),),
                      trailing: Icon(Icons.arrow_forward_ios_outlined,color: Color(0xffFFC300),size: 20,),
                    ),
                    Divider(),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Status()));
                      },
                      child: ListTile(
                        title: Text("Status",style: TextStyle(color: Colors.black,fontSize: 20),),
                        trailing: Icon(Icons.arrow_forward_ios_outlined,color: Color(0xffFFC300),size: 20,),
                      ),
                    ),
                    Divider(),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Reviews()));
                      },
                      child: ListTile(
                        title: Text("Reviews",style: TextStyle(color: Colors.black,fontSize: 20),),
                        trailing: Icon(Icons.arrow_forward_ios_outlined,color: Color(0xffFFC300),size: 20,),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Text("Settings",style: TextStyle(color: Colors.black,fontSize: 20),),
                      trailing: Icon(Icons.arrow_forward_ios_outlined,color: Color(0xffFFC300),size: 20,),
                    ),
                    Divider(),
                    ListTile(
                      title: Text("Update",style: TextStyle(color: Colors.black,fontSize: 20),),
                      trailing: Icon(Icons.arrow_forward_ios_outlined,color: Color(0xffFFC300),size: 20,),
                    ),


                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
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
                        "Log Out",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
