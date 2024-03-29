import 'package:flutter/material.dart';

import 'widget/veirfycode_view_body.dart';

class VeirfyCodeView extends StatelessWidget {
  const VeirfyCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: VeirfyCodeViewBody(),
      ),
    );
  }
}
