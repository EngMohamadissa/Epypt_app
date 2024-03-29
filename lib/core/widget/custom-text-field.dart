import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    this.maxLength,
    this.keyboardType,
    this.hintText,
    this.onChanged,
    this.obscureText = false,
    this.prefixIcon,
    this.label,
    this.hintStyle,
    this.controller,
    required String hint,
    this.suffixIcon,
  });
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final String? hintText;
  final bool? obscureText;
  final Text? label;
  final TextStyle? hintStyle;
  final TextEditingController? controller;
  final int? maxLength;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: TextFormField(
        maxLength: maxLength,
        keyboardType: keyboardType,
        controller: controller,
        obscureText: obscureText!,
        validator: (data) {
          if (data!.isEmpty) {
            return 'field is required';
          }
          return null;
        },
        onChanged: onChanged,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          // تحديد حجم الحاشية
          label: label,
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: hintStyle,
          fillColor: Colors.white,
          filled: true,
          enabledBorder: buildBorder(),
          border: buildBorder(),
          focusedBorder: buildBorder(const Color.fromARGB(255, 74, 67, 2)),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide:
          BorderSide(color: color ?? const Color.fromARGB(255, 50, 50, 50)),
    );
  }
}
