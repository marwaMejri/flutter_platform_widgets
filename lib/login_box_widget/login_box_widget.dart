import 'package:flutter/material.dart';
import 'package:flutterplatformwidget/login_box_widget/login_box_container.dart';
import 'file:///C:/Users/marwa.mejri/AndroidStudioProjects/flutter_platform_widget/lib/login_box_widget/login_box_button_widget.dart';
class LoginBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: ((23.0*MediaQuery.of(context).size.width)/375.0)),
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
            overflow: Overflow.visible,
            children: <Widget>[
              LoginBoxContainer(),
              Container(
                margin: EdgeInsets.only(top: (180.0*MediaQuery.of(context).size.width)/375.0),
                child: Material(
                  color: Colors.transparent,
                    child:  ButtonWidget()
              ),
              )],
          ),

        ],
      ),
    );






  }
}
