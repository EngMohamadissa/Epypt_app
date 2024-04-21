import 'package:flutter/material.dart';
import '../constant.dart';

abstract class Styles {
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );
  static const textStyle24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const textStyle14 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
  );
  static const textStyleDate = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  static const textStyle28 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w500,
    color: kPrimaryColor,
  );

  static const textStyleRL = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 34, 34, 34),
  );
}
