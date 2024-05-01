import 'package:eghypt_c/core/utils/app_router.dart';
import 'package:eghypt_c/core/utils/funcations/validat_funcation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/styles.dart';
import '../../../../../../core/utils/funcations/build_linear_greadient.dart';
import '../../../../../../core/widget/custom_botton.dart';
import '../../../../../../core/widget/custom_text_field.dart';
import 'row_navigator_to_forgetpassowrd.dart';
import 'row_navigator_to_rigester_view.dart';

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
              "تسجيل      الدخول",
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
              color: Color.fromARGB(255, 35, 35, 35),
            ),
            const SizedBox(
              height: 250,
            ),
            const CustomTextfield(
              validator: checkValidate,
              prefixIcon: Icon(Icons.email),
              label: Text(
                'ادخل الأيمل',
              ),
              hint: 'الأيميل',
              hintText: '----@gmail.com',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextfield(
              validator: checkValidate,
              obscureText: true,
              suffixIcon: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.remove_red_eye)),
              prefixIcon: const Icon(Icons.lock),
              hint: 'كلمة المرور',
              hintText: '*******',
              label: const Text(
                'ادخل كلمة المرور',
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
              text: 'تسجيل',
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
      GoRouter.of(context).push(AppRouter.kHomeView);
    } else {
      autovalidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}
