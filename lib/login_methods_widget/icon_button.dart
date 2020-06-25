import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData icon;
  final Color iconColor;

  IconButtonWidget({@required this.icon, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: IconButton(
          icon: Icon(
            icon,
            size: 30,
            color: iconColor,
          ),
          onPressed: () {}),
    );
  }
}
