import 'package:flutter/material.dart';
import 'package:sidebar_drawer_routing/main.dart';
import 'package:sidebar_drawer_routing/pages/favorite.page.dart';
import 'package:sidebar_drawer_routing/pages/notification.page.dart';
import 'package:sidebar_drawer_routing/pages/people.page.dart';
import 'package:sidebar_drawer_routing/pages/update.page.dart';
import 'package:sidebar_drawer_routing/pages/user.page.dart';
import 'package:sidebar_drawer_routing/pages/work.page.dart';
import 'package:sidebar_drawer_routing/widget/menuheader.widget.dart';
import 'package:sidebar_drawer_routing/widget/menuitem.widget.dart';
import 'package:sidebar_drawer_routing/widget/menusearch.widget.dart';

enum TipoMenu {
  HOME,
  PEOPLE,
  FAVORITE,
  NOTIFICATION,
  UPDATE,
  WORK,
}

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 5, vertical: 40);

  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const name = 'Usuario teste';
    const email = 'email@email.com';
    const urlImage =
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCypzCDY76zB1Bc4xNs3GNLZJaGQppC2oR0Q&usqp=CAU';

    return Drawer(
      child: Material(
        color: const Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          padding: padding,
          children: [
            const MenuHeaderWidget(
                urlImage: urlImage, name: name, email: email),
            const SizedBox(height: 12),
            const MenuSearch(hintText: 'Procurar', icon: Icons.search),
            const SizedBox(height: 12),
            MenuItemWidget(
                text: 'Pessoas',
                icon: Icons.people,
                onClicked: () => selectedItem(context, TipoMenu.PEOPLE)),
            MenuItemWidget(
                text: 'Favoritos',
                icon: Icons.favorite_border,
                onClicked: () => selectedItem(context, TipoMenu.FAVORITE)),
            MenuItemWidget(
                text: 'Trabalho',
                icon: Icons.work_outlined,
                onClicked: () => selectedItem(context, TipoMenu.WORK)),
            MenuItemWidget(
                text: 'Atualizar',
                icon: Icons.update,
                onClicked: () => selectedItem(context, TipoMenu.UPDATE)),
            const Divider(color: Colors.white70),
            MenuItemWidget(
                text: 'Notificações',
                icon: Icons.notifications_outlined,
                onClicked: () => selectedItem(context, TipoMenu.NOTIFICATION)),
            const Divider(color: Colors.white70),
            MenuItemWidget(
                text: 'Inicio',
                icon: Icons.home,
                onClicked: () => selectedItem(context, TipoMenu.HOME)),
          ],
        ),
      ),
    );
  }

  selectedItem(BuildContext context, TipoMenu tipo) {
    Navigator.of(context).pop();

    switch (tipo) {
      case TipoMenu.PEOPLE:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => PeoplePage()));
        break;
      case TipoMenu.FAVORITE:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => FavoritePage()));
        break;
      case TipoMenu.WORK:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => WorkPage()));
        break;
      case TipoMenu.UPDATE:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => UpdatePage()));
        break;
      case TipoMenu.NOTIFICATION:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => NotificationPage()));
        break;
      case TipoMenu.HOME:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => MainPage()));
        break;
    }
  }
}
