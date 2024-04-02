import 'package:eghypt_c/core/utils/app_router.dart';
import 'package:eghypt_c/core/utils/funcations/validat_funcation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/styles.dart';
import '../../../../../../core/utils/funcations/build_linear_greadient.dart';
import '../../../../../../core/widget/custom_botton.dart';
import '../../../../../../core/widget/custom-text-field.dart';

class RigesterViewBody extends StatefulWidget {
  const RigesterViewBody({super.key});

  @override
  State<RigesterViewBody> createState() => _RigesterViewBodyState();
}

class _RigesterViewBodyState extends State<RigesterViewBody> {
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
            const Text("R   I   G   E   S   T   E   R",
                textAlign: TextAlign.center, style: Styles.textStyleRL),
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
              height: 150,
            ),
            const CustomTextfield(
              validator: checkValidate,
              prefixIcon: Icon(Icons.person),
              label: Text(
                'Enter your first name',
              ),
              hint: 'Email',
              hintText: 'firstname',
              //hintStyle: TextStyle(color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextfield(
              validator: checkValidate,
              prefixIcon: Icon(Icons.person_2),
              label: Text(
                'Enter your last name',
              ),
              hint: '',
              hintText: 'last name',
              // hintStyle: TextStyle(color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextfield(
              validator: checkValidate,
              prefixIcon: Icon(Icons.email),
              label: Text(
                'Enter your email',
              ),
              hint: 'Email',
              hintText: 'Email',
              //  hintStyle: TextStyle(color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextfield(
              validator: checkValidate,
              obscureText: true,
              prefixIcon: Icon(Icons.lock),
              hint: 'passowrd',
              hintText: 'passowrd',
              label: Text(
                'Enter your password',
              ),
            ),
            const SizedBox(
              height: 38,
            ),
            CustomButon(
              onTap: () {
                validateMethod();
              },
              text: 'Rigester',
            ),
          ],
        ),
      ),
    );
  }

  void validateMethod() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.validate();
      GoRouter.of(context).push(AppRouter.kMyDataView);
    } else {
      autovalidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}
