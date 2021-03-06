import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class TextFieldIos {
  TextInputType keyboardType;
  String hintText;
  IconData prefixIcon;
  IconData suffixIcon;

  TextFieldIos({@required this.keyboardType, @required this.hintText, @required this.prefixIcon,@required this.suffixIcon});
  buildIosTextField() {
    return CupertinoTextFieldData(
        keyboardType: keyboardType,
        autofocus: true,
        autocorrect: true,
        cursorColor: Color.fromRGBO(248, 85, 132, 0),
        placeholder: hintText,
        placeholderStyle: TextStyle(
          color: Color.fromRGBO(150, 150, 150, 1),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        suffix: Icon(
          suffixIcon,
          size: 25,
          color: Colors.black,
        ),
        prefix: Icon(
          prefixIcon,
          size: 30,
          color: Colors.black,
        ),
        decoration: BoxDecoration(border: null));
  }
}
