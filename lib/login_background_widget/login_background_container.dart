import 'package:flutter/material.dart';
import 'package:flutterplatformwidget/login_background_widget/login_background_image.dart';
class LoginBackgroundContainer extends StatelessWidget {
  final Widget child;

  LoginBackgroundContainer({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(251, 157, 106, 0.8),
            Color.fromRGBO(246, 82, 135, 1),

          ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp
        )
      ),
      child: Stack(
        children: <Widget>[
          LoginBackgroundImage(),
          child
        ],
      ),
    );
  }
}
