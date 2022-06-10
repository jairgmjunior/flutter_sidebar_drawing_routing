import 'package:flutter/material.dart';
import 'package:sidebar_drawer_routing/widget/navigation.drawer.widget.dart';

class UpdatePage extends StatelessWidget {
  const UpdatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: const Text('Atualizações'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
    );
  }
}
