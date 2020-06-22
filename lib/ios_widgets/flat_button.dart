import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class FlatButtonIosWidget{
  buildFlatButton(){
    return CupertinoFilledButtonData(

      child: Text("Forgot Password ?",style: TextStyle(
        color: CupertinoColors.white,
        decoration: TextDecoration.underline,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),)
    );

  }
}