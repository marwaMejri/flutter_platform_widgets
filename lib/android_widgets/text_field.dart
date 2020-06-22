import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class TextFieldAndroid {
  TextInputType keyboardType;
  String hintText;
  IconData icon;
  IconData suffixIcon;

  TextFieldAndroid(
      {@required this.keyboardType,
      @required this.hintText,
      @required this.icon,
      @required this.suffixIcon});

  buildAndroidTextField() {
    return MaterialTextFieldData(
        autofocus: true,
        autocorrect: true,
        keyboardType: keyboardType,
        cursorColor: Color.fromRGBO(248, 85, 132, 0),
        decoration: InputDecoration(
          hintText: hintText,
           hintStyle: TextStyle(
             color: Color.fromRGBO(150, 150, 150, 1),
             fontSize: 20,
             fontWeight: FontWeight.bold,
           ),
          prefixIcon: Icon(
            icon,
            size: 30,
            color: Colors.black,
          ),
          suffixIcon: Icon(suffixIcon,size: 25,color: Colors.black,),
          border: InputBorder.none
        ));
  }
}
