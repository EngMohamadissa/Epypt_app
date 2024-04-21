import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:eghypt_c/Featuer/products/presentation/view/widget/tab_bar_view.dart';
import 'package:flutter/material.dart';
import '../../../../core/styles.dart';
import '../../../cart/presentation/view/cart_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Product> cartItems = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 5);
  }

  void addToCart(Product product) {
    if (!cartItems.any((item) => item.name == product.name)) {
      setState(() {
        cartItems.add(product);
      });
    } else {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.warning,
        animType: AnimType.scale,
        desc: 'تم إضافة العنصر بالفعل',
        btnOkOnPress: () {},
        btnOkText: 'موافق', // تغيير نص الزر هنا
      ).show();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CartPage(
                          cartItems: cartItems,
                        )),
              );
            },
            icon: const Icon(Icons.macro_off),
          ),
        ],
        title: const Text(
          'ميزو للتجارة',
          style: Styles.textStyle24,
        ),
        centerTitle: true,
        bottom: TabBar(
          padding: EdgeInsets.zero,
          isScrollable: true,
          controller: _tabController,
          labelStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          tabs: const [
            Tab(text: 'الكل'),
            Tab(text: 'رمضان جانا'),
            Tab(text: 'عروض'),
            Tab(text: 'ياميش'),
            Tab(text: 'مشروبات ساقعة'),
          ],
          indicatorColor: const Color.fromARGB(255, 161, 90, 90),
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white,
        ),
      ),
      body: TabBarViewBody(tabController: _tabController),
    );
  }
}
