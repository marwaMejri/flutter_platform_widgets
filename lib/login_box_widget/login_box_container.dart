import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutterplatformwidget/android_widgets/text_field.dart';
import 'package:flutterplatformwidget/ios_widgets/text_field.dart';

class LoginBoxContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.7,
      child: Card(
        elevation: 2.0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Container(
          width: (330.0*MediaQuery.of(context).size.width)/375.0,
          height: (190.0*MediaQuery.of(context).size.width)/375.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              PlatformTextField(
                  material: (_, __) => TextFieldAndroid(
                          hintText: "Email Address",
                          keyboardType: TextInputType.emailAddress,
                          suffixIcon: null,
                          prefixIcon: Icons.email)
                      .buildAndroidTextField(),
                  cupertino: (_,__)=>TextFieldIos(
                    hintText: "Email Address",
                    keyboardType: TextInputType.emailAddress,
                    suffixIcon: null,
                    prefixIcon: CupertinoIcons.mail_solid
                  ).buildIosTextField(),
                ),
              Divider(
                color: Color.fromRGBO(150, 150, 150, 1),
                thickness:1,
              ),
              PlatformTextField(
                    material: (_, __) => TextFieldAndroid(
                        hintText: "Password",
                        keyboardType: TextInputType.text,
                        suffixIcon: Icons.remove_red_eye,
                        prefixIcon: Icons.lock)
                        .buildAndroidTextField(),
                    cupertino: (_,__)=>TextFieldIos(
                        hintText: "Password",
                        keyboardType: TextInputType.text,
                        suffixIcon: CupertinoIcons.eye_solid,
                        prefixIcon: CupertinoIcons.padlock_solid
                    ).buildIosTextField(),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
