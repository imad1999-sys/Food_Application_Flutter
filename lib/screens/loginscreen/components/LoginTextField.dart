import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final String hintTextname;
  final IconData textFieldIcon;
  final Color textFieldIconColor;

  LoginTextField({
    @required this.hintTextname,
    @required this.textFieldIcon,
    @required this.textFieldIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
            prefixIcon: Icon(textFieldIcon , color: textFieldIconColor,),
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
