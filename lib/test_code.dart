import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:go_router/go_router.dart';

import 'core/utils/app_router.dart';

class TestCode extends StatefulWidget {
  const TestCode({super.key});

  @override
  State<TestCode> createState() => _TestCodeState();
}

class _TestCodeState extends State<TestCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          OtpTextField(
            fieldWidth: 50.0,
            borderRadius: BorderRadius.circular(16),
            numberOfFields: 5,
            borderColor: const Color(0xFF512DA8),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              GoRouter.of(context).push(AppRouter.kResetpasswordView);
            }, // end onSubmit
          ),
        ],
      ),
    );
  }
}
