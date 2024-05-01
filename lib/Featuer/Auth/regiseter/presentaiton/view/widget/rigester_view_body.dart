import 'package:eghypt_c/core/utils/app_router.dart';
import 'package:eghypt_c/core/utils/funcations/validat_funcation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/styles.dart';
import '../../../../../../core/utils/funcations/build_linear_greadient.dart';
import '../../../../../../core/widget/custom_botton.dart';
import '../../../../../../core/widget/custom_text_field.dart';

class RigesterViewBody extends StatefulWidget {
  const RigesterViewBody({super.key});

  @override
  State<RigesterViewBody> createState() => _RigesterViewBodyState();
}

class _RigesterViewBodyState extends State<RigesterViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? selectedProduct;

  void onChanged(String? newValue) {
    setState(
      () {
        selectedProduct = newValue!;
      },
    );
  }

  List<String> products = [
    'Product 1',
    'Product 2',
    'Product 3',
    'Product 4',
  ];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    final double horizontalPadding = screenSize.width * 0.05;
    final double textScaleFactor = screenSize.width < 600 ? 0.9 : 1.1;

    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: buildLinearGradient(),
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height < 600 ? 32 : 40,
            ),
            const Text("حساب    جديد",
                textAlign: TextAlign.center, style: Styles.textStyleRL),
            SizedBox(
              height: MediaQuery.of(context).size.width < 600 ? 16 : 24,
            ),
            Divider(
              thickness: 0.8,
              indent: MediaQuery.of(context).size.width * 0.1,
              endIndent: MediaQuery.of(context).size.width * 0.1,
              color: Colors.black,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height < 600 ? 150 : 200,
            ),
            const CustomTextfield(
              validator: checkValidate,
              prefixIcon: Icon(Icons.person),
              label: Text(
                'ادخل الأسم الثلاثي',
              ),
              hintText: 'الأسم الثلاثي',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height < 600 ? 20 : 30,
            ),
            const CustomTextfield(
              validator: checkValidate,
              prefixIcon: Icon(Icons.phone),
              label: Text(
                'ادخل الرقم',
              ),
              hintText: '....20+',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height < 600 ? 20 : 30,
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
            SizedBox(
              height: MediaQuery.of(context).size.height < 600 ? 38 : 48,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width < 600 ? 16 : 24,
            ),
            CustomTextfield(
              validator: checkValidate,
              isDense: true,
              label: const Text('اسم المحل'),
              labelStyle: const TextStyle(),
              floatingLabelStyle: TextStyle(color: Colors.blue[300]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width < 600 ? 16 : 24,
            ),
            dropDownListRegister(context),
            SizedBox(
              height: MediaQuery.of(context).size.width < 600 ? 16 : 24,
            ),
            const CustomTextfield(
              validator: checkValidate,
              isDense: true,
              label: Text('المحافظة'),
              labelStyle: TextStyle(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width < 600 ? 16 : 24,
            ),
            const CustomTextfield(
              validator: checkValidate,
              isDense: true,
              label: Text('المنطقة'),
              labelStyle: TextStyle(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width < 600 ? 16 : 24,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 100),
              child: Text(
                'نوع المحل',
              ),
            ),
            ContainerRigester(
                horizontalPadding: horizontalPadding,
                textScaleFactor: textScaleFactor),
            SizedBox(
              height: MediaQuery.of(context).size.width < 600 ? 16 : 24,
            ),
            const CustomTextfield(
              validator: checkValidate,
              isDense: true,
              label: Text('العنوان'),
              labelStyle: TextStyle(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width < 600 ? 16 : 24,
            ),
            CustomTextfield(
              validator: checkValidate,
              isDense: true,
              label: const Text('الكود(اختياري)'),
              labelStyle: const TextStyle(),
              floatingLabelStyle: TextStyle(color: Colors.blue[300]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height < 600 ? 32 : 40,
            ),
            CustomButon(
              onTap: () {
                validateMethod();
              },
              text: 'تسجيل',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width < 600 ? 16 : 24,
            ),
          ],
        ),
      ),
    );
  }

  Form dropDownListRegister(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double containerHeight = screenHeight < 600 ? 40 : 60;
    double horizontalPadding = screenWidth * 0.05;
    double verticalPadding = screenHeight * 0.01;
    double borderRadius = 12;

    if (screenWidth < 350) {
      borderRadius = 8;
    } else if (screenWidth > 600) {
      borderRadius = 16;
    }

    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding, vertical: verticalPadding),
        child: Container(
          height: containerHeight,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 205, 203, 203),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
              ),
              value: selectedProduct,
              iconEnabledColor: Colors.black,
              isExpanded: true,
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.black),
              onChanged: onChanged,
              items: products.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              validator: checkValidateDrowp,
            ),
          ),
        ),
      ),
    );
  }

  void validateMethod() {
    if (formKey.currentState!.validate()) {
      return fromvv();
    } else {
      {
        autovalidateMode = AutovalidateMode.always;
        setState(() {});
      }
    }
  }

  void fromvv() {
    if (_formKey.currentState!.validate()) {
      GoRouter.of(context).push(AppRouter.kHomeView);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please correct the errors in the form')),
      );
    }
  }
}

class ContainerRigester extends StatelessWidget {
  const ContainerRigester({
    super.key,
    required this.horizontalPadding,
    required this.textScaleFactor,
  });

  final double horizontalPadding;
  final double textScaleFactor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color.fromARGB(255, 220, 213, 213),
        ),
        height: 50,
        child: Center(
          child: Text(
            'حدد موقع المنشأة',
            style: TextStyle(
              fontSize: 20 * textScaleFactor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
