import 'package:flutter/material.dart';

import '../../../../../../core/styles.dart';
import '../../../../../../core/utils/funcations/build_linear_greadient.dart';
import '../../../../../../core/widget/custom_botton.dart';
import '../../../../../../core/widget/custom-text-field.dart';


class ResetpasswordViewBody extends StatelessWidget {
  const ResetpasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: buildLinearGradient(),
      child: ListView(
        children: const [
          SizedBox(
            height: 32,
          ),
          Text(
            " تعيين كلمتك المرور",
            textAlign: TextAlign.center,
            style: Styles.textStyleRL,
          ),
          SizedBox(
            height: 16,
          ),
          Divider(
            thickness: 0.8,
            indent: 50,
            endIndent: 50,
            color: Colors.grey,
          ),
          SizedBox(
            height: 250,
          ),
          CustomTextfield(
            suffixIcon: Icon(Icons.remove_red_eye),
            prefixIcon: Icon(Icons.lock),
            hint: 'كلمة السر',
            label: Text(
              'ادخل كلملة السر الجديدة',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextfield(
            obscureText: true,
            suffixIcon: Icon(Icons.remove_red_eye),
            prefixIcon: Icon(Icons.lock),
            hint: 'كلمة السر',
            label: Text(
              'تأكيد كلملة السر الجديدة',
            ),
          ),
          SizedBox(
            height: 38,
          ),
          CustomButon(
            text: 'تأكيد',
          ),
        ],
      ),
    );
  }
}
