import 'package:flutter/material.dart';
import 'widget/home_view_body.dart';
import 'widget/leading_icons_home_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.yellow,
        title: const AppBarHomeView(),
      ),
      body: const HomeViewBody(),
    );
  }
}
