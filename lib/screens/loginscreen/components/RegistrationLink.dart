import 'package:flutter/material.dart';

class RegistrationLink extends StatelessWidget {
  final String firstText;
  final Color firstTextColor;
  final String secondText;
  final Color secondTextColor;

  RegistrationLink({
    @required this.firstText,
    @required this.firstTextColor,
    @required this.secondText,
    @required this.secondTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            firstText,
            style: TextStyle(color: firstTextColor),
          ),
          Text(
            secondText,
            style: TextStyle(color: secondTextColor),
          ),
        ],
      ),
    );
  }
}
