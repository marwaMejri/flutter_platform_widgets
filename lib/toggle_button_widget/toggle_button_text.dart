import 'package:flutter/material.dart';

class ToggleButtonText extends StatelessWidget {
  final String text;
  final Color textColor;

  ToggleButtonText({this.text, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: (17*MediaQuery.of(context).size.width)/375.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: (25 * MediaQuery.of(context).size.width) / 375,
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
      ),
    );
  }
}
