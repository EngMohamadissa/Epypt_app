import 'package:eghypt_c/Featuer/bill_view/presentation/view/widget/bill_body.dart';
import 'package:flutter/material.dart';

class BillsView extends StatelessWidget {
  const BillsView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text('فواتيري',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            ),
            automaticallyImplyLeading: false,
            // actions: [
            //   IconButton(
            //     onPressed: () {
            //       LocalizationChecker.changeLanguge(context);
            //     },
            //     icon: const Icon(Icons.menu, color: Colors.black87),
            //   )
            // ],
            backgroundColor: Colors.red,
            bottom: const TabBar(
                labelStyle:
                    TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                dividerColor: Colors.white,
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    text: 'الفواتير الحالية',
                  ),
                  Tab(
                    text: 'الفواتير السابقة',
                  ),
                ]),
          ),
          body: const TabBarView(children: [
            BillBody(),
            BillBody(),
          ]),
        ));
  }
}
