import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class ForgotPasswordEmailVerify extends StatelessWidget {
  const ForgotPasswordEmailVerify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 200),
            Text(
              "Your Email Address",
              style: Theme.of(context).textTheme.titleLarge,
            ),

            const SizedBox(height: 10),
            Text(
              "A 6 digits code will be sent to your email address",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            
            const SizedBox(height: 16),
            FilledButton(
              onPressed: (){}, 
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