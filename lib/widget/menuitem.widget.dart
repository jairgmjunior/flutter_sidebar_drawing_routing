import 'package:flutter/material.dart';

class MenuItemWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? onClicked;

  const MenuItemWidget(
      {Key? key, required this.text, required this.icon, this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 5),
        ListTile(
          title: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
          leading: Icon(
            icon,
            color: Colors.white,
          ),
          hoverColor: Colors.white70,
          onTap: onClicked,
        ),
      ],
    );
  }
}
