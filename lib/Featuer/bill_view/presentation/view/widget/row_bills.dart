import 'package:flutter/material.dart';

class RowBills extends StatelessWidget {
  const RowBills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'المنتج الأول' '4' 'x',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          '10\$',
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
