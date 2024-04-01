import 'package:flutter/material.dart';

import '../../../../../core/styles.dart';

class AppBarHomeView extends StatelessWidget {
  const AppBarHomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.person),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.call_outlined),
          onPressed: () {},
        ),
        const SizedBox(
          width: 90.0,
        ),
        Text(
          "فاتورة",
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
