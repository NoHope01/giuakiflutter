import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/ItemAppBar.dart';
import 'package:flutter_application_2/ItemBottomNavBar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemPage extends StatelessWidget{

  List<Color> Clrs =
  [
    Colors.blue,
    Colors.red,
    Colors.indigo,
    Colors.orange,
    Colors.green,
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black12,
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset("images/1.png",
            height: 300,),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 49, bottom: 15),
                  child: Row(
                    children: [
                      Text("Tiêu đề sản phẩm",
                      style: TextStyle(
                        fontSize: 29,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ],
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 5, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 20,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.blue,
                          ),
                          onRatingUpdate: (index){},
                        ),
                        Row(children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                )
                              ]
                            ),
                            child: Icon(CupertinoIcons.plus, size: 18,),
                          ),
                          Container(margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                              "01",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.blue,
                          ),
                          ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                )
                              ]
                            ),
                            child: Icon(CupertinoIcons.minus, size: 18,),
                          ),
                        ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                        "Mô tả chi tiết của sản phẩm",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.blue,
                    ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                    Text(
                      "Size:",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                      SizedBox(width: 10,),
                      Row(
                        children: [
                          for(int i=5; i<10; i++)
                        Container(
                          height: 30,
                        width: 30,
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow:[
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 8,
                            ),
                          ],
                        ),
                         child: Text(
                           i.toString(),
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 18,
                             color: Colors.blue,
                           ),
                         ),
                        ),
                      ],
                      ),
                  ],
                  ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Text(
                          "Màu:",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Row(
                          children: [
                            for(int i=0; i<5; i++)
                              Container(height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Clrs[i],
                                  boxShadow:[
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 8,
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}