import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final String hintTextname;
  final IconData textFieldIcon;
  final Color textFieldIconColor;
  final bool obscureText;
  final TextInputType textInputType;

  LoginTextField({
    @required this.hintTextname,
    @required this.textFieldIcon,
    @required this.textFieldIconColor,
    @required this.obscureText,
    @required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        obscureText: obscureText,
        keyboardType: textInputType,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            prefixIcon: Icon(
              textFieldIcon,
              color: textFieldIconColor,
            ),
            hintText: hintTextname,
            hintStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            )),
      ),
    );
  }
}
