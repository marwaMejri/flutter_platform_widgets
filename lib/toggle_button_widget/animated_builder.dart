import 'package:flutter/material.dart';

class AnimatedBuilderWidget extends StatelessWidget {
  final AnimationController animationController;
  final Animation animation;

  AnimatedBuilderWidget(
      {@required this.animationController, @required this.animation});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: (9* MediaQuery.of(context).size.width) / 375,
      left: (50*MediaQuery.of(context).size.width) / 375,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, child) => Transform(
          transform: Matrix4.translationValues(
              animation.value * (170 * MediaQuery.of(context).size.width) / 375,
              0.0,
              0.0),
          child: Opacity(
            opacity: 0.8,
            child: Container(
              width: (130 * MediaQuery.of(context).size.width) / 375,
              height: (35 * MediaQuery.of(context).size.width) / 375,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
            ),
          ),
        ),
      ),
    );
  }
}
