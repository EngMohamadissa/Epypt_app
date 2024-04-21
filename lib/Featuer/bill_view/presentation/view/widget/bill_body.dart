import 'package:easy_localization/easy_localization.dart';
import 'package:eghypt_c/Featuer/bill_view/presentation/view/widget/row_bills.dart';
import 'package:flutter/material.dart';

class BillBody extends StatelessWidget {
  const BillBody({super.key});

  @override
  Widget build(BuildContext context) {
    String formattedDate =
        DateFormat('EEEE, MMMM d, y, hh:mm a', 'ar_AE').format(DateTime.now());

    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth >= 600;

    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color.fromARGB(255, 215, 207, 207),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  'رقم الفاتورة"#T-1',
                  style: TextStyle(
                    fontSize: isTablet ? 28.0 : 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  formattedDate,
                  style: TextStyle(
                    fontSize: isTablet ? 18.0 : 16.0,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'طريقه الدفع :كاش',
                  style: TextStyle(
                    fontSize: isTablet ? 20.0 : 18.0,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'الشراء:من تجار',
                  style: TextStyle(
                    fontSize: isTablet ? 20.0 : 18.0,
                  ),
                ),
                const SizedBox(height: 16.0),
                const Divider(
                  color: Colors.black,
                ),
                Text(
                  'ملخص الفاتورة:',
                  style: TextStyle(
                    fontSize: isTablet ? 24.0 : 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const RowBills();
                  },
                ),
                const Divider(
                  color: Colors.black,
                ),
                Text(
                  '100\$ الاجمالي',
                  style: TextStyle(
                    fontSize: isTablet ? 24.0 : 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
