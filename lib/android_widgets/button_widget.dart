import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class ButtonWidget{

  buildAndroidButton(){
    return MaterialRaisedButtonData(
      color: Colors.transparent,
      child: Container(
        height: 100,
        child: Center(
          child: Text(
            "LOGIN",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            // colors: [Color(0xffb1daf0), Color(0xff0f62a6)],
            colors: [
              Color.fromRGBO(246, 82, 135, 1),
              Color.fromRGBO(251, 157, 106, 1)
            ],
          )
        ),

      ),
      elevation: null,
      onPressed: (){},
    );
  }
}