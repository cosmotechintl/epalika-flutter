import 'package:e_nagarpalika/adminstration.dart';
import 'package:flutter/material.dart';

class Utility{
  static late BuildContext context;
  static Widget createCustomIconButton(String iconName,String btnText,{bool horizontal=false}){
    if (horizontal) {
      return GestureDetector(
        onTap: ()=>
          Navigator.push(context,MaterialPageRoute(builder: (_)=>adminstration())),
        child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(3.0),
            child: Image.asset(
              "assets/icons/$iconName",
              height: 50.0,
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child:Text(btnText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0
                ),
              )
          )
        ],
            ),
      );
    }
    else {
      return GestureDetector(
        onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (_)=>adminstration()))
        ,
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Image.asset(
              "assets/icons/$iconName",
              height: 75.0,
            ),
          ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child:Text(btnText,
              textAlign: TextAlign.center,
            )
        )
            ],
            ),
      );
    }
  }
}