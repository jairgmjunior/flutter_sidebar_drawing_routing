import 'package:flutter/material.dart';
import 'package:sidebar_drawer_routing/pages/user.page.dart';

class MenuHeaderWidget extends StatelessWidget {
  final String urlImage;
  final String name;
  final String email;

  const MenuHeaderWidget(
      {Key? key,
      required this.urlImage,
      required this.name,
      required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(children: [
        GestureDetector(
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: showUserPage)),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name,
                style: const TextStyle(fontSize: 20, color: Colors.white)),
            const SizedBox(height: 4),
            Text(
              email,
              style: const TextStyle(fontSize: 14, color: Colors.white),
            )
          ],
        ),
        const Spacer(),
        const CircleAvatar(
          radius: 24,
          backgroundColor: Color.fromRGBO(30, 60, 168, 1),
          child: Icon(
            Icons.add_comment_outlined,
            color: Colors.white,
          ),
        )
      ]),
    );
  }

  Widget showUserPage(context) => UserPage(name: name, urlImage: urlImage);
}
