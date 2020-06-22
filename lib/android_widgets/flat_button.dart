import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class FlatButtonWidget{

  buildFlatButton(){
    return MaterialFlatButtonData(
      color: Colors.transparent,
      onPressed: (){},
      child: Text("Forgot Password ?",style: TextStyle(
        color: Colors.white,
        decoration: TextDecoration.underline,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),)
    );
  }
}