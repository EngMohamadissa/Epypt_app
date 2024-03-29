import 'package:flutter/material.dart';

import '../../../constant.dart';

BoxDecoration buildLinearGradient() {
  return const BoxDecoration(
    gradient: LinearGradient(
      colors: customColors,
      begin: Alignment.bottomRight,
      end: Alignment.topLeft,
    ),
  );
}
