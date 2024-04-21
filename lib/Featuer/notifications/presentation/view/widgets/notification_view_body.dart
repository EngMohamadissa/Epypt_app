import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import '../../../../../core/styles.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) {
        return const NotifcationViewBodyItem();
      },
    );
  }
}

class NotifcationViewBodyItem extends StatelessWidget {
  const NotifcationViewBodyItem({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd').format(now);
    String period = DateFormat('a').format(now);
    String dayPeriod = period == 'AM' ? 'ص' : 'م';
    String formattedTime = DateFormat('kk:mm').format(now);

    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Container(
        color: const Color.fromARGB(136, 224, 214, 214),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: const Text(
                'تم استلام الطلبية',
                style: Styles.textStyleDate,
              ),
              subtitle: Text(
                'اطلبهم من فاتورة بأسعار في معقول باقوى كاش باك',
                style: Styles.textStyleDate.copyWith(fontSize: 20),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$formattedDate – $formattedTime $dayPeriod',
                  style: Styles.textStyleDate,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
