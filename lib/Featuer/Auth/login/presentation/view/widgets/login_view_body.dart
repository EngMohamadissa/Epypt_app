import 'package:flutter/material.dart';
import '../../../../../../core/styles.dart';
import '../../../../../../core/utils/funcations/build_linear_greadient.dart';
import '../../../../../../core/widget/custom_botton.dart';
import '../../../../../../core/widget/custom-text-field.dart';
import 'row_navigator_to_forgetpassowrd.dart';
import 'row_navigator_to_rigesterView.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
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
              "L     O     G     I     N",
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
              prefixIcon: Icon(Icons.email),
              label: Text(
                'Enter your email',
              ),
              hint: 'Email',
              hintStyle: TextStyle(color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextfield(
              obscureText: true,
              prefixIcon: Icon(Icons.lock),
              hint: 'passowrd',
              label: Text(
                'Enter your password',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const RowNavigatortoForgetpassowrd(),
            const SizedBox(
              height: 38,
            ),
            CustomButon(
              onTap: () {
                validateMethod();
              },
              text: 'Login',
            ),
            const SizedBox(
              height: 10,
            ),
            const RowNavigatortoRigesterView()
          ],
        ),
      ),
    );
  }

  void validateMethod() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.validate();
    } else {
      autovalidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}
