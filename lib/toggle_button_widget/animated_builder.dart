import 'package:flutter/material.dart';

class AnimatedBuilderWidget extends StatelessWidget {
  final AnimationController animationController;
  final Animation animation;

  AnimatedBuilderWidget(
      {@required this.animationController, @required this.animation});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) => Transform(
        transform: Matrix4.translationValues(
            animation.value * (170 * MediaQuery.of(context).size.width) / 375,
            0.0,
            0.0),
        child: Container(
          margin: EdgeInsets.only(
            top: (7 * MediaQuery.of(context).size.width) / 375,
            left: (8 * MediaQuery.of(context).size.width) / 375,
          ),
          width: (170 * MediaQuery.of(context).size.width) / 375,
          height: (55 * MediaQuery.of(context).size.width) / 375,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(30))),
        ),
      ),
    );
  }
}
