import 'package:flutter/material.dart';

class LoginMethodsContainer extends StatelessWidget {
  final Color color1;
  final Color color2;

  LoginMethodsContainer({@required this.color1, @required this.color2});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              color1,
              color2,
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      width: (100.0 * MediaQuery.of(context).size.width) / 375.0,
      height: (1.0 * MediaQuery.of(context).size.width) / 375.0,
    );
  }
}
