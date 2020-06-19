import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutterplatformwidget/android_widgets/button_widget.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(

      body: Center(
        child: PlatformButton(
          android: (_)=>ButtonWidget().buildAndroidButton(),
        )
      ),
    );
  }
}
