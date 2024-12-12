import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'loginpage.dart';  // Assuming the LoginPage is in the same folder

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(3.w), // Using Sizer for responsive padding
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.h), // Spacer for top margin
              Text(
                "Create an Account",
                style: TextStyle(
                  fontSize: 18.sp, // Responsive font size using Sizer
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 3.h),

              // Full Name Input Field
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 2.h),

              // Email Input Field
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 2.h),

              // Password Input Field
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 3.h),

              // Register Button
              ElevatedButton(
                onPressed: () {
                  // Navigate to LoginPage and pass a success message
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => LoginPage(message: "Registration Successfully"),
                    ),
                  );
                },
                child: Text("Register", style: TextStyle(fontSize: 14.sp)),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 1.5.h),
                  backgroundColor: Colors.blue,
                  minimumSize: Size(double.infinity, 6.h),
                ),
              ),
              SizedBox(height: 2.h),

              // Login Redirect
            
            ],
          ),
        ),
      ),
    );
  }
}
