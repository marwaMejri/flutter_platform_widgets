import 'package:flutter/material.dart';
import 'package:flutterplatformwidget/login_methods_widget/icon_button.dart';
import 'package:flutterplatformwidget/login_methods_widget/login_methods_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class LoginMethodsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: (30*MediaQuery.of(context).size.width)/375.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoginMethodsContainer(color1: Colors.white10,color2: Colors.white),
              Material(
                color: Colors.transparent,
                child: Text("OR",style: TextStyle(
                  color: Colors.white,
                  fontSize: (20*MediaQuery.of(context).size.width)/375.0,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              LoginMethodsContainer(color1: Colors.white,color2:Colors.white10 )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top:(17*MediaQuery.of(context).size.width)/375.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircleAvatar(
                    radius: 35,
                    child: IconButtonWidget(icon: FontAwesomeIcons.facebookF,iconColor: null,)
                ),
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: IconButtonWidget(icon: FontAwesomeIcons.google,iconColor: Colors.orange,)
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
