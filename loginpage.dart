import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/registration.dart';

class LoginPage extends StatefulWidget {
  final String? message; // Optionally pass a message to be shown

  const LoginPage({Key? key, this.message}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _message = ""; // Variable to hold the message
  bool _showMessage = false; // Flag to control message visibility

  @override
  void initState() {
    super.initState();

    // If a message is passed, show it for 2 seconds
    if (widget.message != null && widget.message!.isNotEmpty) {
      _message = widget.message!;
      _showMessage = true;

      // Hide the message after 2 seconds
      Future.delayed(Duration(seconds: 2), () {
        setState(() {
          _showMessage = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(3.w), // Using Sizer for responsive padding
        child: Stack(
          children: [
            // Center the login form inside a Container with a fixed height and width
            Center(
              child: Container(
                width: 75.w, // Set a fixed width for the login box (80% of screen width)
                height: 60.h, // Set a fixed height for the login box (55% of screen height)
                padding: EdgeInsets.all(4.w), // Padding around the form inside the box
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(0, 4), // Shadow position
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min, // Make the column take only as much space as needed
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Logo at the top of the login box
                    Image.asset(
                      'asset/image/bot.png', // Path to your logo
                      width: 30.w, // Set the width of the logo relative to screen width
                      height: 15.h, // Set the height of the logo relative to screen height
                      fit: BoxFit.contain, // Make sure the image fits properly
                    ),
                    SizedBox(height: 2.h), // Spacer between logo and input fields

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

                    // Login Button with fixed size
                    ElevatedButton(
                      onPressed: () {
                        // Handle login logic here
                      },
                      child: Text("Login", style: TextStyle(fontSize: 14.sp)),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 1.5.h),
                        backgroundColor: Colors.blue,
                        minimumSize: Size(double.infinity, 6.h), // Fill width and set height for button
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account? "),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegistrationPage()));
                          },
                          child: Text("Sign up"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // The success message displayed in the top-right corner using a Stack
            if (_showMessage)
              Positioned(
                top: 4.h, // Adjust this value as needed
                right: 3.w, // Adjust the right margin for positioning
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
                  color: Colors.green, // Green background for success message
                  child: Text(
                    _message,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
