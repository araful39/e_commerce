import 'package:flutter/material.dart';

class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEDEEE1),

        appBar: AppBar(
            backgroundColor: Color(0xffFFC300),

          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              )),
          title: Text(
            "Reviews",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            Icon(
              Icons.circle,
              color: Colors.black,
              size: 15,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.circle,
              color: Colors.black,
              size: 15,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.circle,
              color: Colors.black,
              size: 15,
            ),
            SizedBox(
              width: 5,
            ),
          ],
          elevation: 0,
        ),
        body:
        ListView.builder(
            itemCount: 50,
            itemBuilder: (context,index){
              return
                Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 170,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [


                       Padding(
                         padding: const EdgeInsets.only(left: 50),
                         child: Row(

                         mainAxisAlignment: MainAxisAlignment.start,

                            children: [
                              Icon(Icons.account_circle_rounded,color: Colors.teal,),
                              SizedBox(width: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Raju",
                                    style: TextStyle(color: Colors.black,fontSize: 30),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color:Color(0xffFFC300),),
                                      Icon(Icons.star,color: Color(0xffFFC300),),
                                      Icon(Icons.star,color: Color(0xffFFC300)),
                                      Icon(Icons.star,),
                                      Icon(Icons.star,),

                                    ],
                                  ),

                                ],
                              ),

                            ],
                          ),
                       ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50,right: 50),
                            child: Divider(
                              color: Colors.black,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text("Provide useful, constructive feedback."),
                              Text("Talk about a range of elements, including customer service."),

                              Text("Be detailed, specific, and honest."),
                              Text("Leave out links and personal information."),
                              Text("Keep it civil and friendly."),


                            ],
                          ),




                        ],
                      ),
                    ),
                  ),
                );
            })
    );
  }
}