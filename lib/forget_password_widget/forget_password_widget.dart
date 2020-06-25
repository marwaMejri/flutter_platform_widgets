import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutterplatformwidget/android_widgets/flat_button.dart';
import 'package:flutterplatformwidget/ios_widgets/flat_button.dart';
class ForgetPasswordWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformButton(
      padding: EdgeInsets.only(
        top: 50.0
      ),

      materialFlat: (_,__)=>AndroidFlatButtonWidget().buildFlatButton(),
      cupertino: (_,__)=>IosFlatButtonWidget().buildFlatButton(),
    );
  }
}
