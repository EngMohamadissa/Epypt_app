import 'package:eghypt_c/core/utils/funcations/validat_funcation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/styles.dart';
import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/utils/funcations/build_linear_greadient.dart';
import '../../../../../../core/widget/custom_botton.dart';
import '../../../../../../core/widget/custom-text-field.dart';

class ForgetpassowrdViewBody extends StatefulWidget {
  const ForgetpassowrdViewBody({
    super.key,
  });

  @override
  State<ForgetpassowrdViewBody> createState() => _ForgetpassowrdViewBodyState();
}

class _ForgetpassowrdViewBodyState extends State<ForgetpassowrdViewBody> {
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
              " نسيت كلمه السر ",
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
              color: Colors.black,
            ),
            const SizedBox(
              height: 250,
            ),
            const CustomTextfield(
              validator: checkValidate,
              prefixIcon: Icon(Icons.lock),
              hintText: 'كلمة السر',
              label: Text(
                'ادخل الأيميل',
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
                validateMethod();
              },
              text: 'تحقق',
            ),
          ],
        ),
      ),
    );
  }

  void validateMethod() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.validate();
      GoRouter.of(context).push(AppRouter.kVeirfycodeView);
    } else {
      autovalidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}
