import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'loginpage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LoginPage(),  // Set RegistrationPage as the home widget
        );
      },
    );
  }
}
