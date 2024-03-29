import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/styles.dart';
import '../../../../../../core/utils/app_router.dart';

class RowNavigatortoForgetpassowrd extends StatelessWidget {
  const RowNavigatortoForgetpassowrd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kForgetView);
          },
          child: Text('ForgetPassowrd?',
              style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 42, 42, 42))),
        ),
        const SizedBox(
          width: 30,
        )
      ],
    );
  }
}
