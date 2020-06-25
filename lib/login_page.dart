import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutterplatformwidget/forget_password_widget/forget_password_widget.dart';
import 'package:flutterplatformwidget/login_background_widget/login_background_container.dart';
import 'package:flutterplatformwidget/login_background_widget/login_background_image.dart';
import 'package:flutterplatformwidget/login_box_widget/login_box_widget.dart';
import 'package:flutterplatformwidget/login_methods_widget/login_methods_widget.dart';
import 'package:flutterplatformwidget/toggle_button_widget/toggle_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            LoginBackgroundImage(),
            LoginBackgroundContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ToggleButtonWidget(),
                  LoginBoxWidget(),
                  ForgetPasswordWidget(),
                  LoginMethodsWidget()
                ],
              ),

            ),
          ],
        ),
      )
    );
  }
}
