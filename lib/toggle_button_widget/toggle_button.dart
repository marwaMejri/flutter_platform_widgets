import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterplatformwidget/toggle_button_widget/animated_builder.dart';
import 'package:flutterplatformwidget/toggle_button_widget/toggle_button_text.dart';

class ToggleButtonWidget extends StatefulWidget {
  @override
  _ToggleButtonWidgetState createState() => _ToggleButtonWidgetState();
}

class _ToggleButtonWidgetState extends State<ToggleButtonWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;
  Color signInTextColor;
  Color signUpTextColor;


  @override
  void initState() {
    super.initState();
    this.signInTextColor=Colors.black;
    this.signUpTextColor=Colors.white;
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.decelerate,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: (70 * MediaQuery.of(context).size.width) / 375,
          decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(60))),
        ),
        AnimatedBuilderWidget(animation: _animation,animationController: _animationController,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                 _animationController.reverse();
              },
              child: ToggleButtonText(
                text: "SIGN IN",
                textColor: signInTextColor,
              )

            ),
            GestureDetector(
              onTap: () {
                 _animationController.forward();
                _animationController.addStatusListener((status) {
                  if (status == AnimationStatus.completed) {
                       setState(() {
                         this.signUpTextColor=Colors.black;
                         this.signInTextColor=Colors.white;
                       });

                  }else{
                    setState(() {
                      this.signUpTextColor=Colors.white;
                      this.signInTextColor=Colors.black;
                    });
                  }
                });
              },
              child: ToggleButtonText(
                text: "SIGN UP",
                textColor: signUpTextColor,
              )
            ),
          ],
        )
      ],
    );
  }
}
