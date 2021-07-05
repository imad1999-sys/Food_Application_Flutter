import 'package:flutter/material.dart';

class SignupTextField extends StatelessWidget {
  final String hintTextname;
  final bool obscureText;
  final TextInputType textInputType;
  final TextEditingController textEditingController;
  SignupTextField({
    @required this.hintTextname,
    @required this.obscureText,
    @required this.textInputType,
    @required this.textEditingController
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        obscureText: obscureText,
        keyboardType: textInputType,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
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
