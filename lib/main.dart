import 'package:flutter/material.dart';
import 'package:food_app/screens/welcomescreen.dart';
import './screens/loginscreen/index.dart' as LoginPage;
import "./screens/signupscreen/index.dart" as SignupPage;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignupPage.SignupPage()
    );
  }
}
