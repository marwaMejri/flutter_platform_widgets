import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutterplatformwidget/android_widgets/flat_button.dart';
import 'package:flutterplatformwidget/ios_widgets/flat_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: Center(
        child:  PlatformButton(
          materialFlat: (_,__)=>FlatButtonWidget().buildFlatButton(),
          cupertinoFilled: (_,__)=>FlatButtonIosWidget().buildFlatButton(),
        ),
      ),
    );
  }
}
