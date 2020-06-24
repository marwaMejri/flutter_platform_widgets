import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutterplatformwidget/toggle_button_widget/toggle_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      backgroundColor: Colors.pinkAccent[100],
      body: Center(
        child:  PlatformWidget(
          cupertino: (_,__)=>Material(
              color: Colors.transparent,
              child: ToggleButtonWidget(
          )),
        )
      ),
    );
  }
}
