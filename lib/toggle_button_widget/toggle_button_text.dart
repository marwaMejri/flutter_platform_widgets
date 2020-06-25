import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToggleButtonText extends StatelessWidget {
  final String text;
  final Color textColor;

  ToggleButtonText({this.text, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: (4*MediaQuery.of(context).size.width)/375.0),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: (23* MediaQuery.of(context).size.width) / 375,
          fontWeight: FontWeight.w600,
          color: textColor,
        ),
      ),
    );
  }
}
