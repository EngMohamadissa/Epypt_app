import 'package:eghypt_c/core/styles.dart';
import 'package:eghypt_c/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TrargetView extends StatelessWidget {
  const TrargetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(' الموفراتي'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.wechat_sharp, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.phone_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.notifications_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kNotificationView);
            },
          ),
        ],
      ),
      body: const TargetViewBody(),
    );
  }
}

class TargetViewBody extends StatelessWidget {
  const TargetViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const TargetViewItem();
      },
    );
  }
}

class TargetViewItem extends StatelessWidget {
  const TargetViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'الأهداف:',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(
                Icons.person,
                color: Colors.red,
              ),
              Expanded(
                child: Text(
                  'اسم التاجر: الاكتع',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(
                Icons.crisis_alert_outlined,
                color: Colors.red,
              ),
              Expanded(
                child: Text(
                  'الهدف',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Text(
                  'قيمة الفاتورة: 3000ج',
                  style: Styles.textStyle18,
                ),
              ),
              Text('خصم: 200ج', style: Styles.textStyle18),
            ],
          ),
          SizedBox(height: 10),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.check_circle, color: Colors.green),
                SizedBox(width: 8),
                Text(
                  'تم تحقيق الهدف',
                  style: Styles.textStyle18,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Divider(),
        ],
      ),
    );
  }
}
