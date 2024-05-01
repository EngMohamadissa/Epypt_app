import 'package:flutter/material.dart';
import 'product_view_body.dart';

class TabBarViewBody extends StatelessWidget {
  const TabBarViewBody({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: _tabController,
      children: const [
        ProductsPage(),
        Center(child: Text('الصفحة 2')),
        Center(child: Text('الصفحة 3')),
        Center(child: Text('الصفحة 4')),
        Center(child: Text('الصفحة 5')),
      ],
    );
  }
}
