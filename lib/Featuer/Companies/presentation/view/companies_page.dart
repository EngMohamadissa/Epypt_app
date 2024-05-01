import 'package:eghypt_c/Featuer/Companies/presentation/view/companies_page_view.dart';
import 'package:eghypt_c/Featuer/bill_view/presentation/view/bill_view.dart';
import 'package:eghypt_c/Featuer/products/presentation/view/product_view.dart';
import 'package:eghypt_c/Featuer/target/presentation/view/target_view.dart';
import 'package:flutter/material.dart';

class HomePagemasa extends StatefulWidget {
  const HomePagemasa({super.key});

  @override
  State<HomePagemasa> createState() => _HomePagemasaState();
}

class _HomePagemasaState extends State<HomePagemasa> {
  int currentIndex = 0;

  final List<Widget> pages = [
    const CompaniesPage(),
    const BillsView(),
    const ProductPageView(),
    const TrargetView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.home_outlined),
              label: 'الرئيسية',
              activeIcon: Icon(Icons.home)),
          BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.receipt_long),
              label: 'فواتيري'),
          BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'السلة'),
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.crisis_alert_outlined),
            label: 'الأهداف',
          ),
        ],
      ),
    );
  }
}
