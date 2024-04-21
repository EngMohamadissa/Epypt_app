import 'package:eghypt_c/core/utils/app_router.dart';
import 'package:eghypt_c/core/utils/funcations/validat_funcation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/styles.dart';
import '../../../../../../core/utils/funcations/build_linear_greadient.dart';
import '../../../../../../core/widget/custom_botton.dart';
import '../../../../../../core/widget/custom-text-field.dart';

class ResetpasswordViewBody extends StatefulWidget {
  const ResetpasswordViewBody({super.key});

  @override
  State<ResetpasswordViewBody> createState() => _ResetpasswordViewBodyState();
}

class _ResetpasswordViewBodyState extends State<ResetpasswordViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: buildLinearGradient(),
        child: ListView(
          children: [
            const SizedBox(
              height: 32,
            ),
            const Text(
              " تعيين كلمتك المرور",
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
              validator: checkValidate,
              suffixIcon: Icon(Icons.remove_red_eye),
              prefixIcon: Icon(Icons.lock),
              hint: 'كلمة السر',
              label: Text(
                'ادخل كلملة السر الجديدة',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextfield(
              validator: checkValidate,
              obscureText: true,
              suffixIcon: Icon(Icons.remove_red_eye),
              prefixIcon: Icon(Icons.lock),
              hint: 'كلمة السر',
              label: Text(
                'تأكيد كلملة السر الجديدة',
              ),
            ),
            const SizedBox(
              height: 38,
            ),
            CustomButon(
              text: 'تأكيد',
              onTap: () {
                validateMethod();
              },
            ),
          ],
        ),
      ),
    );
  }

  void validateMethod() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.validate();
      GoRouter.of(context).push(AppRouter.kLoginView);
    } else {
      autovalidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}
