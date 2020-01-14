import 'package:flutter/material.dart';
import 'package:github_users/app/themes/app.theme.dart';

class CounterWidget extends StatelessWidget {
  final String label;
  final int value;

  CounterWidget({
    @required this.label,
    @required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(label, style: TextStyle(fontSize: 10)),
        Text(
          '$value',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: primaryColor,
          ),
        ),
      ],
    );
  }
}
