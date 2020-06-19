import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutterplatformwidget/login_page.dart';

void main() {
  runApp(
      DevicePreview(
        builder: (context)=>MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformApp(
        builder:  DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        home: LoginPage(),

    );
  }
}



