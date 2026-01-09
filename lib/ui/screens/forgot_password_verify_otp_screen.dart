import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class ForgotPasswordVerifyOtpScreen extends StatefulWidget {
  const ForgotPasswordVerifyOtpScreen({super.key});

  @override
  State<ForgotPasswordVerifyOtpScreen> createState() => _ForgotPasswordVerifyOtpScreenState();
}

class _ForgotPasswordVerifyOtpScreenState extends State<ForgotPasswordVerifyOtpScreen> {
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
              "PIN Verification",
              style: Theme.of(context).textTheme.titleLarge,
            ),

            const SizedBox(height: 10),
            Text(
              "A 6 digits code  sent to your email address",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 10),

            PinCodeTextField(
              length: 6,
              obscureText: false,
              animationType: AnimationType.fade,
              keyboardType: TextInputType.number,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(7),
                fieldHeight: 50,
                fieldWidth: 40,
                activeFillColor: Colors.white,
                inactiveColor: Colors.grey.shade300,
                selectedColor: Colors.green,
              ),
              animationDuration: Duration(milliseconds: 300),
              backgroundColor: Colors.white,
              //enableActiveFill: true,
              appContext: context,
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