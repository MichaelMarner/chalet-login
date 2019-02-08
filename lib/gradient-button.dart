import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final Gradient fill;
  final Function onPressed;

  GradientButton({this.child, this.fill, this.onPressed, Key key, this.padding})
      : super(key: key);
  Widget build(BuildContext context) {
    return Container(
      padding: this.padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(3)),
        gradient: this.fill,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: this.onPressed,
          child: Center(
            child: this.child,
          ),
        ),
      ),
    );
  }
}
