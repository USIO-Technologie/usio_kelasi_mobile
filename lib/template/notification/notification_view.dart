import 'package:flutter/material.dart';

import '../../tools/usioColors.dart';
import '../../widget/appBarWidget/appBarWidget.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  _NotificationViewState createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black100,
      appBar: appBarWidget("Notification", "Notif", Icons.notification_important_outlined),
    );
  }
}
