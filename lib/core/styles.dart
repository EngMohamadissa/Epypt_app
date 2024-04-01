import 'package:flutter/material.dart';

import '../constant.dart';

abstract class Styles {
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static const textStyle20 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.normal,
    // fontFamily: kGTSectraFineRegular,
  );
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.normal,
    // fontFamily: kGTSectraFineRegular,
  );
  static const textStyle14 = TextStyle(
      fontSize: 18, fontWeight: FontWeight.normal, color: Colors.grey);

  static const textStyle16 = TextStyle(
      fontSize: 28, fontWeight: FontWeight.w500, color: kPrimaryColor);

  static const textStyleRL = TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 85, 85, 85));
}
