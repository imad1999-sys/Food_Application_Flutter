import 'package:flutter/material.dart';

class SignupTextField extends StatelessWidget {
  final String hintTextname;

  SignupTextField({
    @required this.hintTextname,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
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
