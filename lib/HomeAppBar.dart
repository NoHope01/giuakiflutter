import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25) ,
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "LONG STORE",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          Spacer(),
          Badge(
            badgeColor: Colors.red,
            padding:  EdgeInsets.all(7),
            badgeContent: Text(
              "4",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, "cartPage");
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 32,
                color: Colors.black87,
              ),
            ) ,
          ),
        ],
      ),
    );
  }
}