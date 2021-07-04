import 'package:flutter/material.dart';

class LoginTitle extends StatelessWidget {
  final String name;
  final Color textColor;
  final double size;

  LoginTitle(
      {@required this.name, @required this.textColor, @required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        name,
        style: TextStyle(
            color: textColor, fontSize: size, fontWeight: FontWeight.w700),
      ),
    );
  }
}
