import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/styles.dart';
import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/utils/funcations/build_linear_greadient.dart';
import '../../../../../../core/widget/custom_botton.dart';
import '../../../../../../core/widget/custom-text-field.dart';

class ForgetpassowrdViewBody extends StatelessWidget {
  const ForgetpassowrdViewBody({
    super.key,
  });

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
            " Forget Passowrd ",
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
          const CustomTextfield(
            prefixIcon: Icon(Icons.lock),
            hint: 'passowrd',
            label: Text(
              'Enter your email',
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const SizedBox(
            height: 38,
          ),
          CustomButon(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kVeirfycodeView);
            },
            text: 'Cheak',
          ),
        ],
      ),
    );
  }
}
