import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification Page'),
      ),
      body: Center(
        child: Text('This is the Notification page'),
      ),
    );
  }
}
