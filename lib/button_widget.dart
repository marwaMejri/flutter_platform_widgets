import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget{

  buildButton(){
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: 75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors:    [
                  Color.fromRGBO(246, 82, 135, 1),
                  Color.fromRGBO(251, 157, 106, 0.8)
                ]
            )
        ),
        child: Center(
          child: Text("LOGIN",style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),),
        ),
      ),
    );
  }
}