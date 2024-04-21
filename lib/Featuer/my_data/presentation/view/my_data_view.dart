import 'package:eghypt_c/core/styles.dart';
import 'package:flutter/material.dart';
import 'widget/my_data_view_body.dart';

class MyData extends StatelessWidget {
  const MyData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          'بياناتي',
          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: const MyDataViewBody(),
    );
  }
}
