import 'package:flutter/material.dart';
import 'package:sidebar_drawer_routing/widget/navigation.drawer.widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: const Text('Notificações'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
