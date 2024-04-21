import 'package:flutter/material.dart';

import '../../../../core/styles.dart';
import 'widget/cash_back_view_body.dart';

class CashBackView extends StatelessWidget {
  const CashBackView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'كاش باك واكواد الخصم',
          style: Styles.textStyle24,
        ),
        centerTitle: true,
      ),
      body: const CashBackViewBody(),
    );
  }
}
