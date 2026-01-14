import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/forgot_password_email_verify.dart';
import 'package:task_manager/ui/screens/main_nav_bar_holder_screen.dart';
import 'package:task_manager/ui/screens/sign_up_screen.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    void _onTapSignUp() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
    }
    
    void _onTapForgotPassword() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordEmailVerify()));
    }
    
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsetsGeometry.all(30.0),
          child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 200),
            Text(
              "Get Started With",
              style: Theme.of(context).textTheme.titleLarge,
            ),

            const SizedBox(height: 25),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),

            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),

            const SizedBox(height: 20),
            FilledButton(
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainNavBarHolderScreen()));
              }, 
              child: Icon(Icons.arrow_circle_right_outlined),
            ),

            const SizedBox(height: 35),

            Center(
              child: Column(
              children: [
                TextButton(
              onPressed: _onTapForgotPassword, 
              child: Text("Forgot Pasword?"),
            ),

            RichText(
              text: TextSpan(
                text: "Don't have an account? ",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: "Sign Up",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = _onTapSignUp,
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
      )
      ),
    );
  }
}