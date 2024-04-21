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
    final Size screenSize = MediaQuery.of(context).size;

    // Calculate horizontal padding as a percentage of the screen width
    final double horizontalPadding =
        screenSize.width * 0.05; // Example: 5% of screen width

    // Calculate the text scale factor
    final double textScaleFactor = screenSize.width < 600 ? 0.9 : 1.1;

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
            const Text("حساب    جديد",
                textAlign: TextAlign.center, style: Styles.textStyleRL),
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
              height: 150,
            ),
            const CustomTextfield(
              validator: checkValidate,
              prefixIcon: Icon(Icons.person),
              label: Text(
                'ادخل الأسم الثلاثي',
              ),
              hintText: 'الأسم الثلاثي',
              //hintStyle: TextStyle(color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextfield(
              validator: checkValidate,
              prefixIcon: Icon(Icons.phone),
              label: Text(
                'ادخل الرقم',
              ),
              hintText: '....20+',
              //  hintStyle: TextStyle(color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextfield(
              validator: checkValidate,
              obscureText: true,
              prefixIcon: Icon(Icons.lock),
              hintText: '*******',
              label: Text(
                'ادخل كلمة السر',
              ),
            ),
            const SizedBox(
              height: 38,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextfield(
              validator: checkValidate,
              isDense: true,
              label: const Text('اسم المحل'),
              labelStyle: const TextStyle(),
              floatingLabelStyle: TextStyle(color: Colors.blue[300]),
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextfield(
              validator: checkValidate,
              isDense: true,
              label: const Text('نوع المحل'),
              labelStyle: const TextStyle(),
              floatingLabelStyle: TextStyle(color: Colors.blue[300]),
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextfield(
              validator: checkValidate,
              isDense: true,
              label: const Text('المحافظة'),
              labelStyle: const TextStyle(),
              floatingLabelStyle: TextStyle(color: Colors.blue[300]),
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextfield(
              validator: checkValidate,
              isDense: true,
              label: const Text('المنطقة'),
              labelStyle: const TextStyle(),
              floatingLabelStyle: TextStyle(color: Colors.blue[300]),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(255, 220, 213, 213),
                ),
                height: 50, // Consider making the height responsive if needed
                child: Center(
                  child: Text(
                    'حدد موقع المنشأة',
                    style: TextStyle(
                      fontSize: 20 * textScaleFactor, // Apply the scale factor
                      fontWeight: FontWeight.bold,
                      // Apply other styles as needed
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextfield(
              validator: checkValidate,
              isDense: true,
              label: const Text('العنوان'),
              labelStyle: const TextStyle(),
              floatingLabelStyle: TextStyle(color: Colors.blue[300]),
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextfield(
              validator: checkValidate,
              isDense: true,
              label: const Text('الكود(اختياري)'),
              labelStyle: const TextStyle(),
              floatingLabelStyle: TextStyle(color: Colors.blue[300]),
            ),
            const SizedBox(
              height: 32,
            ),
            CustomButon(
              onTap: () {
                validateMethod();
              },
              text: 'تسجيل',
            ),
            const SizedBox(
              height: 16,
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
