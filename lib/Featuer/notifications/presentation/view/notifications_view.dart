import 'package:flutter/material.dart';
import '../../../../core/styles.dart';
import 'widgets/notification_view_body.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'الإشعارات',
          style: Styles.textStyle24,
        ),
        centerTitle: true,
      ),
      body: const NotificationViewBody(),
    );
  }
}
