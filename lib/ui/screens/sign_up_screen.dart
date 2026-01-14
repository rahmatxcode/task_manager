import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/forgot_password_verify_otp_screen.dart';
import 'package:task_manager/ui/screens/login_page.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {

    void _onTapSignIn() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
    
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 110),
            Text(
              "Join With Us",
              style: Theme.of(context).textTheme.titleLarge,
            ),

            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),

            const SizedBox(height: 15),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'First Name',
              ),
            ),

            const SizedBox(height: 15),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Last Name',
              ),
            ),

            const SizedBox(height: 15),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Phone Number',
              ),
            ),

            const SizedBox(height: 15),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),

            
            const SizedBox(height: 16),
            FilledButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordVerifyOtpScreen()));
              }, 
              child: Icon(Icons.arrow_circle_right_outlined),
            ),

            const SizedBox(height: 35),

            Center(
              child: Column(
              children: [
            RichText(
              text: TextSpan(
                text: "Already have an account? ",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: "Sign in",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = _onTapSignIn,
                  ),
                ],
              ),
            ),
              ],
            ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}