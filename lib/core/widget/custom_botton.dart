import 'package:flutter/material.dart';

class CustomButon extends StatelessWidget {
  const CustomButon({super.key, this.onTap, required this.text});

  final VoidCallback? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width < 600
                ? 20
                : 65), // Adjust horizontal padding based on screen width
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
              bottomLeft: Radius.elliptical(40, 40),
              topRight: Radius.elliptical(40, 40),
            ),
          ),
          width: double.infinity,
          height: MediaQuery.of(context).size.width < 600
              ? 40
              : 60, // Adjust height based on screen width
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width < 600
                    ? 14
                    : 18, // Adjust font size based on screen width
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
