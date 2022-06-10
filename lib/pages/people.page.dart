import 'package:flutter/material.dart';
import 'package:sidebar_drawer_routing/widget/navigation.drawer.widget.dart';

class PeoplePage extends StatelessWidget {
  const PeoplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: const Text('Pessoas'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
    );
  }
}
