import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: (55*MediaQuery.of(context).size.width)/375.0,
        width: (150*MediaQuery.of(context).size.width)/375.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            gradient: LinearGradient(
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 1.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
                colors:    [
                  Color.fromRGBO(246, 82, 135, 1),
                  Color.fromRGBO(251, 157, 106, 0.8)
                ]
            )
        ),
        child: Center(
          child: Text("LOGIN",style: TextStyle(
            color: Colors.white,
            fontSize: (30*MediaQuery.of(context).size.width)/375.0,
            fontWeight: FontWeight.bold,
          ),),
        ),
      ),
    );
  }
}
