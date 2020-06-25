import 'package:flutter/material.dart';
class LoginBackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Opacity(
          opacity: 0.2,
            child: Image(
              image: AssetImage("assets/travell.jpg"),
              fit: BoxFit.fitHeight,
              ),

        ),
    );


  }
}
