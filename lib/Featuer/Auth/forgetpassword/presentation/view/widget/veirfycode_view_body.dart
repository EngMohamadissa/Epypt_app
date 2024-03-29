import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/styles.dart';
import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/utils/funcations/build_linear_greadient.dart';
import '../../../../../../core/widget/custom_botton.dart';

class VeirfyCodeViewBody extends StatelessWidget {
  const VeirfyCodeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: buildLinearGradient(),
      child: ListView(
        children: [
          const SizedBox(
            height: 32,
          ),
          const Text(
            " Verivacation Code",
            textAlign: TextAlign.center,
            style: Styles.textStyleRL,
          ),
          const SizedBox(
            height: 16,
          ),
          const Divider(
            thickness: 0.8,
            indent: 50,
            endIndent: 50,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 250,
          ),
          buildOtpcode(),
          const SizedBox(
            height: 8,
          ),
          const SizedBox(
            height: 38,
          ),
          CustomButon(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kResetpasswordView);
            },
            text: 'Cheak',
          ),
        ],
      ),
    );
  }

  OtpTextField buildOtpcode() {
    return OtpTextField(
      textStyle: TextStyle(fontSize: 22),
      filled: true,
      fillColor: Colors.white,
      enabledBorderColor: Colors.grey,
      focusedBorderColor: Colors.black,
      fieldWidth: 50.0,
      borderRadius: BorderRadius.circular(16),
      numberOfFields: 5,
      //set to true to show as box or false to show as dash
      showFieldAsBox: true,
      //runs when a code is typed in
      onCodeChanged: (String code) {
        //handle validation or checks here
      },
      //runs when every textfield is filled
      onSubmit: (String verificationCode) {}, // end onSubmit
    );
  }
}
