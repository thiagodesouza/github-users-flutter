import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Color color;
  final Color disabledColor;
  final Function onPressed;

  ButtonWidget({
    @required this.text,
    @required this.color,
    @required this.onPressed,
    this.disabledColor,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: double.infinity,
      height: 56,
      child: FlatButton(
        color: color,
        disabledColor: disabledColor,
        child: Text(text),
        onPressed: onPressed,
      ),
    );
  }
}
